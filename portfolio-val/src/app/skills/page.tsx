"use client";
import BoxReveal from "@/components/magicui/box-reveal";
import { InfiniteMovingCards } from "@/components/ui/infinite-moving-cards";
import { Text } from "@/components/ui/text";
import skillsVal from "@/content/skills.val";
import { useVal } from "@/val/val.client";

export default function Skills() {
  const skills = useVal(skillsVal);
  return (
    <main className="flex flex-col gap-8 md:items-center items-start justify-center p-4">
      <Text variant="h1" size="title" className="md:mt-16 mt-4">
        Skills
      </Text>
      {skills.map((data, i) => (
        <BoxReveal key={data.group}>
          <div>
            <Text variant="h1" size="title" className="capitalize">
              {data.group}
            </Text>
            <InfiniteMovingCards
              items={data.skills.map((skill) => ({ content: skill.name }))}
              direction={i % 2 === 0 ? "right" : "left"}
              speed="slow"
            />
          </div>
        </BoxReveal>
      ))}
    </main>
  );
}
