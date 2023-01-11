import { publicProcedure, router } from '~/server/trpc.server';
import { fetchFromGraphQL, gql } from "~/utils";
import type { User, Repository, Maybe } from "~/generated/types";

const getPinnsQuery = gql`
  query {
  viewer {
    pinnedItems(first : 6) {
      nodes {
        ... on Repository {
          name
          description
          url
        }
      }
    }
  }
}
  `;
export const pinnsRouter = router({
    all: publicProcedure.query(async () =>{
        const res = await fetchFromGraphQL(getPinnsQuery)
        const data = await res.data
        return {
            pinns: data,
        }
    })
})
