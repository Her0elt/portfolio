import BoxReveal from "@/components/magicui/box-reveal";
import { Text } from "@/components/ui/text";
import { type InfoSection } from "@/content/schema/infoSection.val";
import { cn } from "@/lib/utils";
import { ValRichText } from "@valbuild/next";

export default function InfoSection({ data }: { data: InfoSection }) {
  return (
    <section
      className={cn("flex flex-col gap-8 items-center", {
        "lg:ml-80 md:ml-60 ml-0 md:w-[55%] md:p-0": data.float === "right",
        "lg:mr-80 md:mr-60 md:w-[35%]": data.float === "left",
        "items-center md:mx-44 mr-4": data.float === "none",
      })}
    >
      {data.title && (
        <BoxReveal>
          <Text className="text-center p-1" variant="h1" size="title">
            {data.title}
          </Text>
        </BoxReveal>
      )}
      {data.sections.map((sec) => (
        <div key={sec.title} className={cn("flex flex-col gap-8 m-0 p-8")}>
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
