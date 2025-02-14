import { s, t } from "../../../val.config";

export const workTimelineSectionSchema = s.object({
  type: s.literal("workTimeline"),
  title: s.string(),
  timeline: s.array(
    s.object({
      title: s.string(),
      company: s.string(),
      description: s.string(),
      from: s.date(),
      to: s.date(),
      link: s.string().nullable(),
    }),
  ),
});

export type WorkTimelineSection = t.inferSchema<
  typeof workTimelineSectionSchema
>;
