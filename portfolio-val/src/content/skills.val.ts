import { c, s, t } from "../../val.config";

export const schema = s.array(
  s.object({
    group: s.string(),
    skills: s.array(
      s.object({
        name: s.string(),
        type: s.string(),
      }),
    ),
  }),
);

export type Skills = t.inferSchema<typeof schema>;

export default c.define("/src/content/skills.val.ts", schema, [
  {
    group: "Frontend",
    skills: [
      {
        name: "React",
        type: "frontend",
      },
      {
        name: "Remix",
        type: "frontend",
      },
      {
        name: "Typescript",
        type: "frontend",
      },
      {
        name: "Javascript",
        type: "frontend",
      },
      {
        name: "Next.js",
        type: "frontend",
      },
      {
        name: "CSS",
        type: "frontend",
      },
      {
        name: "Shadcn/ui",
        type: "frontend",
      },
    ],
  },
  {
    group: "Backend",
    skills: [
      {
        name: "Rust",
        type: "backend",
      },
      {
        name: "Prisma",
        type: "backend",
      },
      {
        name: "Drizzle",
        type: "backend",
      },
      {
        name: "Go",
        type: "backend",
      },
      {
        name: "Kotlin",
        type: "backend",
      },
      {
        name: "Postgres",
        type: "backend",
      },
      {
        name: "MySQL",
        type: "backend",
      },
      {
        name: "Quarkus",
        type: "backend",
      },
      {
        name: "C++",
        type: "backend",
      },
      {
        name: "Python",
        type: "backend",
      },
      {
        name: "Graphql",
        type: "backend",
      },
      {
        name: "REST",
        type: "backend",
      },
    ],
  },
  {
    group: "Devops",
    skills: [
      {
        name: "GCP",
        type: "devops",
      },
      {
        name: "Docker",
        type: "devops",
      },
      {
        name: "Git",
        type: "devops",
      },
      {
        name: "Azure",
        type: "devops",
      },
      {
        name: "AWS",
        type: "devops",
      },
    ],
  },
]);
