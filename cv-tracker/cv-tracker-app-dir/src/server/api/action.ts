"use server";
import { headers } from "next/headers";
import { t } from "./trpc";
import { db } from "../db";
import { experimental_createServerActionHandler } from "@trpc/next/app-dir/server";

export const createAction = experimental_createServerActionHandler(t, {
  createContext() {
    return {
      headers: headers(),
      db,
    };
  },
});
