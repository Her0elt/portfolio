import BoxReveal from "@/components/magicui/box-reveal";
import { Text } from "@/components/ui/text";
import { type InfoSection } from "@/content/schema/infoSection.val";
import { ValRichText } from "@valbuild/next";

export default function InfoSection({ data }: { data: InfoSection }) {
  return (
    <section>
      {data.title && (
        <BoxReveal>
          <Text className="text-center p-1" variant="h1" size="title">
            {data.title}
          </Text>
        </BoxReveal>
      )}
      {data.sections.map((sec) => (
        <div
          key={sec.title}
          className="flex flex-col items-center gap-8 lg:mx-44 mx-4"
        >
          <BoxReveal>
            <Text className="text-start" variant="h2" size="heading">
              {sec.title}
            </Text>
          </BoxReveal>
          <div className="flex gap-8 flex-col items-center">
            {sec.content.map((cont, i) => (
              <BoxReveal key={i}>
                <ValRichText>{cont.text}</ValRichText>
              </BoxReveal>
            ))}
          </div>
        </div>
      ))}
    </section>
  );
}
