import { s, t } from "../../../val.config";

export const infoCardSectionSchema = s.object({
  type: s.literal("infoCards"),
  title: s.string().nullable(),
  cards: s.array(
    s.object({
      title: s.string(),
      content: s.richtext({
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
      link: s.string().nullable(),
    }),
  ),
});

export type InfoCardSection = t.inferSchema<typeof infoCardSectionSchema>;
