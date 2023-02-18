import axios from "axios";
import { GraphqlResponse } from "./types";

const axiosInstance = axios.create();


export async function fetchFromGraphQL<T> (
  query: string,
  variables?: Record<string, any>
): Promise<GraphqlResponse<T>| void > {
  if (!process.env.GRAPHQL_API) {
    throw new Error("GRAPHQL_API is required");
  }

  const body: any = { query };

  if (variables) body.variables = variables;

  return axiosInstance
        .post<GraphqlResponse<T>>(process.env.GRAPHQL_API, body, { headers: { "Content-Type": "application/json" }})
        .then((data) => data.data)
        .catch((err) => console.log(err));
};

export const gql = String.raw;
