import { z } from "zod";

export const JobExperienceZod = z.object({
    id: z.string().nullish(),
    company: z.string(),
    description: z.string(),
    from: z.string(),
    to: z.string(),
    title: z.string(),

});

export type JobExperience = z.infer<typeof JobExperienceZod>;
