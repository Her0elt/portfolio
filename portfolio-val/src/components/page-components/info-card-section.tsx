import { HoverEffect } from "@/components/ui/card-hover-effect";
import { Text } from "@/components/ui/text";
import { type InfoCardSection } from "@/content/schema/infoCardSection.val";

export default function InfoCardSection({ data }: { data: InfoCardSection }) {
  return (
    <section className="flex items-center mt-28 flex-col gap-20 md:p-10 p-4">
      {data.title && (
        <Text variant="h1" size="title" className="md:mt-16 mt-4">
          {data.title}
        </Text>
      )}
      <HoverEffect items={data.cards} />
    </section>
  );
}
