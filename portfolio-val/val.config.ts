import { initVal } from "@valbuild/next";

const { s, c, val, config } = initVal({
  project: "Her0elt/portfolio",
  root: "/portfolio-val",
  gitBranch: process.env.VERCEL_GIT_COMMIT_REF,
  gitCommit: process.env.VERCEL_GIT_COMMIT_SHA,
});

export type { t } from "@valbuild/next";
export { s, c, val, config };
