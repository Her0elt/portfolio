import Link from "next/link";
import { Suspense } from "react";
import { Card, CardTitle } from "~/components/ui/Card";
import { Spinner } from "~/components/ui/Spinner";
import { api } from "~/trpc/server";

export default function TechnicalSkillsPage() {
  return (
    <div className="flex  flex-col gap-4">
      <div className="flex  flex-row justify-between gap-4 pr-16">
        <h1 className="text-2xl">Technical skills</h1>
        <Link className="text-2xl" href={"/admin/technical-skills/new"}>
          +
        </Link>
      </div>
      <Suspense fallback={<Spinner />}>
        <SkillList />
      </Suspense>
    </div>
  );
}

async function SkillList() {
  const data = await api.technicalSkill.getAll.query();
  return (
    <div className="flex flex-wrap gap-8">
      {data.entries.map((skill) => (
        <Link
          href={`/admin/technical-skills/${skill.id}`}
          key={skill.id}
          className="w-full md:w-auto"
        >
          <Card className="flex flex-col gap-4 lg:min-w-[35%] lg:flex-1">
            <CardTitle>
              {skill.category} : {skill.skill}
            </CardTitle>
          </Card>
        </Link>
      ))}
    </div>
  );
}
