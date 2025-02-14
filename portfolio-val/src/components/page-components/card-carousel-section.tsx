import BoxReveal from "@/components/magicui/box-reveal";
import { InfiniteMovingCards } from "@/components/ui/infinite-moving-cards";
import { type CardCarouselSection } from "@/content/schema/cardCarouselSection.val";
import { Text } from "@/components/ui/text";

export default function CardCarouselSection({
  data,
}: {
  data: CardCarouselSection;
}) {
  return (
    <section className="flex flex-col gap-10 md:items-center items-start justify-center p-4">
      {data.title && (
        <Text variant="h1" size="title" className="md:mt-16 mt-4">
          {data.title}
        </Text>
      )}
      {data.carousels.map((carousel, i) => (
        <BoxReveal key={i}>
          <Text variant="h1" size="title" className="capitalize mb-4">
            {carousel.title}
          </Text>
          <InfiniteMovingCards
            items={carousel.cards.map((skill) => ({ content: skill.text }))}
            direction={i % 2 === 0 ? "right" : "left"}
            speed="slow"
          />
        </BoxReveal>
      ))}
    </section>
  );
}
