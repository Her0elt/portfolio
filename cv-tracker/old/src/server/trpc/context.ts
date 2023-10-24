// src/server/router/context.ts
import * as trpc from '@trpc/server';
import * as trpcNext from '@trpc/server/adapters/next';

/**
 * Replace this with an object if you want to pass things to createContextInner
 */
type CreateContextOptions = Record<string, never>;

/** Use this helper for:
 * - testing, where we dont have to Mock Next.js' req/res
 * - trpc's `createSSGHelpers` where we don't have req/res
 **/
// eslint-disable-next-line  @typescript-eslint/no-unused-vars
export const createContextInner = async (ops: CreateContextOptions) => {
  return {};
};

/**
 * This is the actual context you'll use in your router
 * @link https://trpc.io/docs/context
 **/
// eslint-disable-next-line @typescript-eslint/no-unused-vars
export const createContext = async (ops: trpcNext.CreateNextContextOptions) => {
  return await createContextInner({});
};

export type Context = trpc.inferAsyncReturnType<typeof createContext>;
