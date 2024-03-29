import Link from "next/link";
import { Suspense } from "react";
import { Card, CardTitle } from "~/components/ui/Card";
import { Spinner } from "~/components/ui/Spinner";
import { api } from "~/trpc/server";

export default function EducationPage() {
  return (
    <div className="flex  flex-col gap-4">
      <div className="flex  flex-row justify-between gap-4 pr-16">
        <h1 className="text-2xl">Education</h1>
        <Link className="text-2xl" href={"/admin/education/new"}>
          +
        </Link>
      </div>
      <Suspense fallback={<Spinner />}>
        <EducationList />
      </Suspense>
    </div>
  );
}

async function EducationList() {
  const data = await api.education.getAll.query();
  return (
    <div className="flex flex-wrap gap-8">
      {data.entries.map((edu) => (
        <Link href={`/admin/education/${edu.id}`} key={edu.id}>
          <Card className="flex flex-col gap-4 lg:min-w-[35%] lg:flex-1">
            <CardTitle>{edu.title}</CardTitle>
            {edu.school}: {edu.from} - {edu.to}
          </Card>
        </Link>
      ))}
    </div>
  );
}
