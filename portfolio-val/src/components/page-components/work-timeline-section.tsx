import { Timeline } from "@/components/ui/timeline";
import { Text } from "@/components/ui/text";
import { type WorkTimelineSection } from "@/content/schema/workTimelineSection.val";
import { format } from "date-fns";

function TimelineContent({
  experience,
}: {
  experience: WorkTimelineSection["timeline"][number];
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

export default function WorkTimelineSection({
  data,
}: {
  data: WorkTimelineSection;
}) {
  const timelineData =
    data.timeline.map((entry) => ({
      title: `${entry.title} - ${entry.company}`,
      content: <TimelineContent experience={entry} />,
    })) ?? [];
  return (
    <div className="w-full lg:pb-80 p-0">
      <Timeline title={data.title} data={timelineData} />
    </div>
  );
}
