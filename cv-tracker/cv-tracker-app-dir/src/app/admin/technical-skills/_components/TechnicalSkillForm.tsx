"use client";
import { api } from "~/trpc/react";
import { newSkillAction, updateSkillAction } from "./TechnicallSkillsActions";
import { type TechinicalSkill } from "~/server/api/routers/technical-skills";
import { useRouter } from "next/navigation";
import { useTransition } from "react";
import { InputField } from "~/components/Form/InputField";
import { SelectField } from "~/components/Form/SelectField";
import { Button } from "~/components/ui/Button";

export default function TechinicalSkillForm({
  skill,
}: {
  skill?: TechinicalSkill;
}) {
  const router = useRouter();
  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  const [_, startTransition] = useTransition();

  const action = skill
    ? updateSkillAction.bind(null, skill.id)
    : newSkillAction;
  const deleteSkill = api.technicalSkill.delete.useMutation({
    onSuccess: () => {
      startTransition(() => router.push("/admin/technical-skills"));
      startTransition(() => router.refresh());
    },
  });

  return (
    <div className="space-y-6 rounded-lg bg-white p-6 shadow-lg md:m-24">
      <div className="flex flex-row justify-evenly pl-16 pr-16">
        <h1 className="text-center text-3xl font-bold">Enter Skill</h1>
        {skill && (
          <button
            onClick={() => {
              deleteSkill.mutate({ id: skill.id });
            }}
          >
            X
          </button>
        )}
      </div>
      <form className="flex flex-col gap-4 md:flex-row md:p-8" action={action}>
        <SelectField
          label="Category"
          name="category"
          required
          defaultValue={skill?.category}
        >
          <option value="backend">Backend</option>
          <option value="frontend">Frontend</option>
          <option value="devops">Devops</option>
        </SelectField>
        <InputField
          label="Skill"
          name="skill"
          placeholder="Enter skill"
          required
          defaultValue={skill?.skill}
        />
        <div className="flex items-end">
          <Button type="submit">Submit</Button>
        </div>
      </form>
    </div>
  );
}
