import BoxReveal from "@/components/magicui/box-reveal";
import { Text } from "@/components/ui/text";
import { type WorkSection } from "@/content/schema/workSection.val";
import { cn } from "@/lib/utils";
import Link from "next/link";

export default function WorkSection({ data }: { data: WorkSection }) {
  return (
    <section
      className={cn("flex flex-col items-center", {
        "lg:ml-80 md:ml-60 ml-0 md:w-[55%] md:p-0": data.float === "right",
        "lg:mr-80 md:mr-60 md:w-[35%]": data.float === "left",
        "items-center md:mx-44 mr-4": data.float === "none",
      })}
    >
      <BoxReveal>
        <Text className="text-start" variant="h3" size="default">
          Currently working for{" "}
          <Link
            className="underline"
            href={data.link}
            target="_blank"
            rel="noreferrer"
          >
            {data.company}
          </Link>
        </Text>
      </BoxReveal>
    </section>
  );
}
