"use client";
import { HoverEffect } from "@/components/ui/card-hover-effect";
import projectsVal from "@/content/projects.val";
import { useVal } from "@/val/val.client";
import { useMemo } from "react";

export default function Projects() {
  const projects = useVal(projectsVal);
  const items = useMemo(
    () =>
      projects.map((pin) => ({
        title: pin.name,
        description: pin.description,
        link: pin.url,
      })) ?? [],
    [projects],
  );

  return (
    <main className="flex items-center mt-28 flex-col gap-20 md:p-10 p-4">
      <HoverEffect items={items} />
    </main>
  );
}
