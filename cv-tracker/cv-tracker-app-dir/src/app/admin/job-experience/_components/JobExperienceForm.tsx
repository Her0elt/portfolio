"use client";
import { type JobExperience } from "~/server/api/routers/job-experience";
import { format, parse } from "date-fns";
import {
  createJobExperienceAction,
  updateJobExperienceAction,
} from "./JobExperienceActions";
import { useRouter } from "next/navigation";
import { useTransition } from "react";
import { api, useAction } from "~/trpc/react";
import { InputField } from "~/components/Form/InputField";
import { Button } from "~/components/ui/Button";

export default function JobExperienceForm({
  experience,
}: {
  experience?: JobExperience;
}) {
  const router = useRouter();
  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  const [_, startTransition] = useTransition();
  const create = useAction(createJobExperienceAction);
  const update = useAction(updateJobExperienceAction);
  const mutation = experience ? update : create;

  const deleteExperience = api.jobExperience.delete.useMutation({
    onSuccess: () => {
      startTransition(() => router.push("/admin/job-experience"));
      startTransition(() => router.refresh());
    },
  });

  function parseDate(date?: string) {
    if (!date) {
      return "";
    }
    try {
      return format(parse(date, "MMMM yyyy", new Date()), "yyyy-MM");
    } catch (e) {
      return "";
    }
  }
  return (
    <div className="space-y-6 rounded-lg bg-white p-6 shadow-lg">
      <div className="flex flex-row justify-evenly gap-4 pl-16 pr-16">
        <h1 className="text-center text-3xl font-bold">Enter Job Experience</h1>
        {experience && (
          <button
            onClick={() => {
              deleteExperience.mutate({ id: experience.id });
            }}
          >
            X
          </button>
        )}
      </div>
      <form
        className="flex w-full flex-col justify-items-center gap-4 space-y-4 md:p-8"
        onSubmit={(e) => {
          e.preventDefault();
          const formData = new FormData(e.currentTarget);
          mutation.mutate(formData);
          startTransition(() => router.push("/admin/job-experience"));
          startTransition(() => router.refresh());
        }}
      >
        {experience && (
          <input readOnly hidden name="id" value={experience.id} />
        )}

        <div className="flex w-full flex-col gap-4 md:flex-row">
          <InputField
            label="Job title"
            className="block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-sm text-gray-900 focus:border-blue-500 focus:ring-blue-500"
            name="title"
            placeholder="Enter job title"
            required
            defaultValue={experience?.title}
          />
          <InputField
            label="Company name"
            name="company"
            className="block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-sm text-gray-900 focus:border-blue-500 focus:ring-blue-500"
            placeholder="Enter company name"
            required
            defaultValue={experience?.company}
          />
        </div>
        <div className="flex flex-col gap-4 md:flex-row">
          <InputField
            label="From"
            name="from"
            required
            type="month"
            defaultValue={parseDate(experience?.from)}
          />
          <InputField
            label="to"
            name="to"
            type="month"
            defaultValue={parseDate(experience?.to)}
          />
        </div>
        <div className="flex flex-col space-y-2">
          <label htmlFor="description">Description</label>
          <textarea
            defaultValue={experience?.description}
            className="block min-h-[200px] w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-sm text-gray-900 focus:border-blue-500 focus:ring-blue-500"
            name="description"
            placeholder="Enter a brief job description"
            required
          />
        </div>
        <div className="flex justify-center">
          <Button type="submit">Submit</Button>
        </div>
      </form>
    </div>
  );
}
