import { s, t } from "../../../val.config";

export const socialSectionSchema = s.object({
  type: s.literal("social"),
  title: s.string(),
  float: s.union(s.literal("left"), s.literal("right"), s.literal("none")),
  socials: s.array(
    s.object({
      name: s.string(),
      link: s.string(),
    }),
  ),
});

export type SocialSection = t.inferSchema<typeof socialSectionSchema>;
