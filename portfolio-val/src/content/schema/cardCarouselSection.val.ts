import { s, t } from "../../../val.config";

export const cardCarouselSectionSchema = s.object({
  type: s.literal("cardCarousel"),
  title: s.string().nullable(),
  carousels: s.array(
    s.object({
      title: s.string(),
      cards: s.array(
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

export type CardCarouselSection = t.inferSchema<
  typeof cardCarouselSectionSchema
>;
