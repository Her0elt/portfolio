import { Text } from "@/components/ui/text";
import { Timeline } from "@/components/ui/timeline";
import type { MetaFunction } from "@remix-run/node";
import { graphql, ResultOf } from "gql.tada";
import { useMemo } from "react";
import { useQuery } from "urql";

import { format, fromUnixTime } from "date-fns";

export const meta: MetaFunction = () => {
  return [
    { title: "Hermann work experience" },
    {
      name: "description",
      content: "A display of my work experience",
    },
  ];
};

const educationQuery = graphql(`
  query {
    experience {
      id
      title
      company
      description
      to
      from
    }
  }
`);

type QueryResult = NonNullable<ResultOf<typeof educationQuery>["experience"]>;

type QueryResultItem = QueryResult[number];

function TimelineContent({ experience }: { experience: QueryResultItem }) {
  return (
    <div className="flex flex-col gap-8">
      <Text>
        {format(fromUnixTime(Number(experience.from) / 1000), "MMM yyyy")} -
        {format(fromUnixTime(Number(experience.to) / 1000), "MMM yyyy")}
      </Text>
      <Text>{experience.description}</Text>
    </div>
  );
}

export default function WorkExperience() {
  const [result] = useQuery({
    query: educationQuery,
  });
  const timelineData = useMemo(
    () =>
      result.data?.experience
        ?.sort(
          (a, b) =>
            Number(new Date(Number(b.to) / 1000)) -
            Number(new Date(Number(a.to) / 1000))
        )
        .map((entry) => ({
          title: `${entry.title} - ${entry.company}`,
          content: <TimelineContent experience={entry} />,
        })) ?? [],
    [result]
  );
  if (!result) {
    return null;
  }
  return (
    <div className="w-full lg:pb-80 p-0">
      <Timeline title="My work experience" data={timelineData} />
    </div>
  );
}
