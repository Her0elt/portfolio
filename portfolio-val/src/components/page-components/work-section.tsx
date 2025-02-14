import BoxReveal from "@/components/magicui/box-reveal";
import { Text } from "@/components/ui/text";
import { type WorkSection } from "@/content/schema/workSection.val";
import Link from "next/link";

export default function WorkSection({ data }: { data: WorkSection }) {
  return (
    <section className="flex flex-col items-center">
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
