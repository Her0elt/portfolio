import BoxReveal from "@/components/magicui/box-reveal";
import { InfiniteMovingCards } from "@/components/ui/infinite-moving-cards";
import { Text } from "@/components/ui/text";
import { groupBy } from "@/utils";
import type { MetaFunction } from "@remix-run/node";
import { graphql } from "gql.tada";
import { useMemo } from "react";
import { useQuery } from "urql";

export const meta: MetaFunction = () => {
  return [
    { title: "Hermann Portfolio" },
    {
      name: "description",
      content: "Overview of my skills in categories",
    },
  ];
};

const skillsQuery = graphql(`
  query {
    skills {
      id
      name
      type
    }
  }
`);
export default function Skills() {
  const [result] = useQuery({
    query: skillsQuery,
  });

  const skillGroups = useMemo(
    () =>
      groupBy(
        result.data?.skills ? result.data.skills : [],
        ({ type }) => type
      ),
    [result]
  );
  console.log(skillGroups);
  return (
    <main className="flex flex-col gap-8 md:items-center items-start justify-center p-4">
      <Text variant="h1" size="title" className="md:mt-16 mt-4">
        Skills
      </Text>
      {Object.entries(skillGroups).map(([group, skills], i) => (
        <BoxReveal key={group}>
          <div>
            <Text variant="h1" size="title">
              {group}
            </Text>
            <InfiniteMovingCards
              items={skills.map((skill) => ({ content: skill.name }))}
              direction={i % 2 === 0 ? "right" : "left"}
              speed="slow"
            />
          </div>
        </BoxReveal>
      ))}
    </main>
  );
}
