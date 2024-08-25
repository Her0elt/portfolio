import { HoverEffect } from "@/components/ui/card-hover-effect";
import { MetaFunction } from "@remix-run/react";
import { graphql } from "gql.tada";
import { useMemo } from "react";
import { useQuery } from "urql";

export const meta: MetaFunction = () => {
  return [
    { title: "Hermann github projexts" },
    {
      name: "description",
      content: "A display of my github pinned projects",
    },
  ];
};

const projectsQuery = graphql(`
  query {
    pinns {
      id
      name
      description
      url
      languages {
        nodes {
          name
        }
      }
    }
  }
`);

export default function Projects() {
  const [result] = useQuery({
    query: projectsQuery,
  });
  const items = useMemo(
    () =>
      result.data?.pinns?.map((pin) => ({
        title: pin.name,
        description: pin.description,
        link: pin.url,
      })) ?? [],
    [result]
  );
  if (!result.data?.pinns) {
    return null;
  }

  return (
    <main className="flex items-center mt-28 flex-col gap-20 md:p-10 p-4">
      <HoverEffect items={items} />
    </main>
  );
}
