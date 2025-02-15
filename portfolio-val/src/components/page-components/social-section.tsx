import { type SocialSection } from "@/content/schema/socialSection.val";
import { Text } from "@/components/ui/text";
import BoxReveal from "@/components/magicui/box-reveal";
import Link from "next/link";
import { cn } from "@/lib/utils";

export default function SocialSection({ data }: { data: SocialSection }) {
  return (
    <section
      className={cn("flex flex-col pb-8", {
        "lg:ml-80 md:ml-60 ml-0 md:w-[55%] md:p-0": data.float === "right",
        "lg:mr-80 md:mr-60 md:w-[35%]": data.float === "left",
        "items-center md:mx-44 mr-4": data.float === "none",
      })}
    >
      <BoxReveal>
        <div className="flex flex-col gap-4">
          <Text className="text-center">{data.title}</Text>
          <div className="flex gap-8">
            {data.socials.map((social, i) => (
              <Link href={social.link} target="_blank" rel="noreferrer" key={i}>
                {social.name}
              </Link>
            ))}
          </div>
        </div>
      </BoxReveal>
    </section>
  );
}
