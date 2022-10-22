// src/server/router/_app.ts
import { educationRouter } from 'server/trpc/router/education';
import { jobExperienceRouter } from 'server/trpc/router/job-experience';
import { router } from 'server/trpc/trpc';

export const appRouter = router({
  jobExperience: jobExperienceRouter,
  education: educationRouter,
});

// export type definition of API
export type AppRouter = typeof appRouter;
