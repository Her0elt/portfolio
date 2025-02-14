import { type SocialSection } from "@/content/schema/socialSection.val";
import { Text } from "@/components/ui/text";
import BoxReveal from "@/components/magicui/box-reveal";
import Link from "next/link";

export default function SocialSection({ data }: { data: SocialSection }) {
  return (
    <section className="flex flex-col pb-8">
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
