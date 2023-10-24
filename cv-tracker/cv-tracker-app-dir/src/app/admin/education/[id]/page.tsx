import { api } from "~/trpc/server";
import EducationForm from "../_components/EducationForm";

export default async function EducationIdPage({
  params,
}: {
  params: { id: string };
}) {
  const experience = await api.education.getById.query(params);
  return <EducationForm education={experience} />;
}
