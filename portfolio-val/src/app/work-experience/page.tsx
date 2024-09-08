"use client";
import { Text } from "@/components/ui/text";
import { Timeline } from "@/components/ui/timeline";

import { useVal } from "@/val/val.client";
import workExperienceVal, {
  WorkExperiences,
} from "@/content/work-experience.val";
import { format } from "date-fns";

function TimelineContent({
  experience,
}: {
  experience: WorkExperiences[number];
}) {
  return (
    <div className="flex flex-col gap-8">
      <Text>
        {format(new Date(experience.from), "MMM yyyy")}-
        {format(new Date(experience.to), "MMM yyyy")}
      </Text>
      <Text>{experience.description}</Text>
    </div>
  );
}

export default function WorkExperience() {
  const experiences = useVal(workExperienceVal);
  const timelineData =
    experiences.map((entry) => ({
      title: `${entry.title} - ${entry.company}`,
      content: <TimelineContent experience={entry} />,
    })) ?? [];
  return (
    <div className="w-full lg:pb-80 p-0">
      <Timeline title="My work experience" data={timelineData} />
    </div>
  );
}
