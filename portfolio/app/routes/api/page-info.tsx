import { json } from "@remix-run/node";

import { fetchFromGraphQL, gql } from "~/utils";
import type { GraphqlResponse, PageInfo } from "~/utils/types";

export const loader = async () => {

  const getPageInfoQuery = gql`
        query {
          pinns {
            name
            description
            url
          }
          educations {
            id
            from
            to
            school
            title
          }
          jobExperiences {
            id
            from
            to
            title
            company
            description
          }
          technicalSkills {
            id
            category
            skill
          }
        }
`;

  const res = await fetchFromGraphQL<GraphqlResponse<PageInfo>>(getPageInfoQuery);
  return json(res);

};
