import Link from "next/link";
import { Suspense } from "react";
import { Card, CardContent, CardHeader, CardTitle } from "~/components/ui/Card";
import { Spinner } from "~/components/ui/Spinner";
import { api } from "~/trpc/server";

export default function JobExperiencePage() {
  return (
    <div className="flex  flex-col gap-4">
      <div className="flex  flex-row justify-between gap-4 pr-16">
        <h1 className="text-2xl">Job experience</h1>
        <Link className="text-2xl" href={"/admin/job-experience/new"}>
          +
        </Link>
      </div>
      <Suspense fallback={<Spinner />}>
        <ExperienceList />
      </Suspense>
    </div>
  );
}

async function ExperienceList() {
  const data = await api.jobExperience.getAll.query();
  return (
    <div className="flex flex-wrap gap-8">
      {data.entries.map((exp) => (
        <Link href={`/admin/job-experience/${exp.id}`} key={exp.id}>
          <Card
            className="flex flex-col gap-4 lg:min-w-[35%] lg:flex-1"
            fixHeight
          >
            <CardHeader className="flex flex-col gap-2">
              <CardTitle>{exp.title}</CardTitle>
              {exp.company}: {exp.from} - {exp.to}
            </CardHeader>
            <CardContent>
              <p>{exp.description}</p>
            </CardContent>
          </Card>
        </Link>
      ))}
    </div>
  );
}
