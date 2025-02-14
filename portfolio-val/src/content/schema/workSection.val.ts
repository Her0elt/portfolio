import { s, t } from "../../../val.config";

export const workSectionSchema = s.object({
  type: s.literal("work"),
  company: s.string(),
  link: s.string(),
});

export type WorkSection = t.inferSchema<typeof workSectionSchema>;
