import { api } from "~/trpc/server";
import JobExperienceForm from "../_components/JobExperienceForm";

export default async function JobExperianceIdPage({
  params,
}: {
  params: { id: string };
}) {
  const experience = await api.jobExperience.getById.query(params);
  return <JobExperienceForm experience={experience} />;
}
