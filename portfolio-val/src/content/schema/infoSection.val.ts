import { s, t } from "../../../val.config";

export const infoSectionSchema = s.object({
  type: s.literal("info"),
  title: s.string().nullable(),
  float: s.union(s.literal("left"), s.literal("right"), s.literal("none")),
  sections: s.array(
    s.object({
      title: s.string().nullable(),
      content: s.array(
        s.object({
          text: s.richtext({
            style: {
              bold: true,
              italic: true,
              lineThrough: true,
            },
            block: {
              h1: true,
              h2: true,
              ul: true,
              ol: true,
            },
            inline: {
              a: true,
              img: true,
            },
          }),
        }),
      ),
    }),
  ),
});

export type InfoSection = t.inferSchema<typeof infoSectionSchema>;
