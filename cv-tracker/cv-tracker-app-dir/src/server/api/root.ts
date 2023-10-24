import { createTRPCRouter } from "~/server/api/trpc";
import { jobExperienceRouter } from "./routers/job-experience";
import { technicalSkillRouter } from "./routers/technical-skills";
import { educationRouter } from "./routers/education";

/**
 * This is the primary router for your server.
 *
 * All routers added in /api/routers should be manually added here.
 */
export const appRouter = createTRPCRouter({
  jobExperience: jobExperienceRouter,
  technicalSkill: technicalSkillRouter,
  education: educationRouter,
});

// export type definition of API
export type AppRouter = typeof appRouter;
