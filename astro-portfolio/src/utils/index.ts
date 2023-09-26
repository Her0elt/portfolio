import type { GraphqlResponse } from 'types';

export async function fetchFromGraphQL<T>(
	query: string,
	variables?: Record<string, any>
): Promise<GraphqlResponse<T>> {
	if (!import.meta.env.GRAPHQL_API) {
		throw new Error('GRAPHQL_API is required');
	}

	const body: any = { query };

	if (variables) body.variables = variables;

	return fetch(import.meta.env.GRAPHQL_API, {
		method: 'POST',
		headers: { 'Content-Type': 'application/json' },
		body: JSON.stringify(body),
	}).then((res) => res.json() as Promise<GraphqlResponse<T>>);
}

export const gql = String.raw;
