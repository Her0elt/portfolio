import { s, t } from "../../../val.config";

export const workSectionSchema = s.object({
  type: s.literal("work"),
  company: s.string(),
  float: s.union(s.literal("left"), s.literal("right"), s.literal("none")),
  link: s.string(),
});

export type WorkSection = t.inferSchema<typeof workSectionSchema>;
