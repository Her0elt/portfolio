import {
  type AnyProcedure,
  type inferHandlerInput,
  type inferRouterInputs,
  type inferRouterOutputs,
} from "@trpc/server";
import superjson from "superjson";

import { type AppRouter } from "~/server/api/root";

export const transformer = superjson;

export function isFormData(value: unknown): value is FormData {
  if (typeof FormData === "undefined") {
    // FormData is not supported
    return false;
  }
  return value instanceof FormData;
}
export type inferActionDef<TProc extends AnyProcedure> = {
  input: inferHandlerInput<TProc>[0];
  output: TProc["_def"]["_output_out"];
  errorShape: TProc["_def"]["_config"]["$types"]["errorShape"];
};

function getBaseUrl() {
  if (typeof window !== "undefined") return "";
  if (process.env.VERCEL_URL) return `https://${process.env.VERCEL_URL}`;
  return `http://localhost:${process.env.PORT ?? 3000}`;
}

export function getUrl() {
  return getBaseUrl() + "/api/trpc";
}

/**
 * Inference helper for inputs.
 *
 * @example type HelloInput = RouterInputs['example']['hello']
 */
export type RouterInputs = inferRouterInputs<AppRouter>;

/**
 * Inference helper for outputs.
 *
 * @example type HelloOutput = RouterOutputs['example']['hello']
 */
export type RouterOutputs = inferRouterOutputs<AppRouter>;
