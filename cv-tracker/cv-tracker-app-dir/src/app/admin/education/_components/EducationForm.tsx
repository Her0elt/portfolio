"use client";
import { newEducationAction, updateEducationAction } from "./EducationActions";
import { format, parse } from "date-fns";
import { api } from "~/trpc/react";
import { useRouter } from "next/navigation";
import { useTransition } from "react";
import { type Education } from "~/server/api/routers/education";
import { InputField } from "~/components/Form/InputField";
import { Button } from "~/components/ui/Button";

export default function EducationForm({
  education,
}: {
  education?: Education;
}) {
  const action = education
    ? updateEducationAction.bind(null, education.id)
    : newEducationAction;

  const router = useRouter();
  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  const [_, startTransition] = useTransition();

  const deleteEducation = api.education.delete.useMutation({
    onSuccess: () => {
      startTransition(() => router.push("/admin/education"));
      startTransition(() => router.refresh());
    },
  });
  return (
    <div className="space-y-6 rounded-lg bg-white p-6 shadow-lg">
      <div className="flex flex-row justify-evenly gap-4 pl-16 pr-16">
        <h1 className="text-center text-3xl font-bold">Enter education</h1>
        {education && (
          <button
            onClick={() => {
              deleteEducation.mutate({ id: education.id });
            }}
          >
            X
          </button>
        )}
      </div>
      <form
        className="flex flex-col justify-items-center gap-4 space-y-4 md:p-8"
        action={action}
      >
        <div className="flex flex-col gap-4 md:flex-row">
          <InputField
            label="Education title"
            name="title"
            placeholder="Enter job title"
            required
            defaultValue={education?.title}
          />
          <InputField
            label="School name"
            name="school"
            placeholder="Enter school name"
            required
            defaultValue={education?.school}
          />
        </div>
        <div className="flex flex-col gap-4 md:flex-row">
          <InputField
            label="From"
            name="from"
            required
            type="number"
            min={2000}
            max={2100}
            defaultValue={education?.from}
          />
          <InputField
            label="To"
            name="to"
            type="number"
            min={2000}
            max={2100}
            defaultValue={education?.to}
            required
          />
        </div>
        <div className="flex items-center">
          <Button type="submit">Submit</Button>
        </div>
      </form>
    </div>
  );
}
