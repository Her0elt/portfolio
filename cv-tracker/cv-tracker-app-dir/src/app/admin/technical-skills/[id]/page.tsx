import { api } from "~/trpc/server";
import TechinicalSkillForm from "../_components/TechnicalSkillForm";

export default async function TechnicalSkillIdPage({
  params,
}: {
  params: { id: string };
}) {
  const skill = await api.technicalSkill.getById.query(params);
  return <TechinicalSkillForm skill={skill} />;
}
