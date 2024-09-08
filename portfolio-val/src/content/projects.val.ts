import { s, c, type t } from "../../val.config";

export const schema = s.array(
  s.object({
    name: s.string(),
    description: s.string(),
    url: s.string(),
    languages: s.array(s.object({ name: s.string() })),
  }),
);

export type Projects = t.inferSchema<typeof schema>;

export default c.define("/src/content/projects.val.ts", schema, [
  {
    name: "computer-setup",
    description: "Ansible scripts to setup personal linux machine",
    url: "https://github.com/Her0elt/computer-setup",
    languages: [
      {
        name: "Dockerfile",
      },
      {
        name: "Makefile",
      },
      {
        name: "Shell",
      },
    ],
  },
  {
    name: ".dotfiles",
    description:
      "Repo that keeps tracks of .dotfiles for personal linux machine",
    url: "https://github.com/Her0elt/.dotfiles",
    languages: [
      {
        name: "Lua",
      },
      {
        name: "Shell",
      },
    ],
  },
  {
    name: "info-api",
    description: "Graphql api for CV information ",
    url: "https://github.com/Her0elt/info-api",
    languages: [
      {
        name: "Rust",
      },
      {
        name: "Dockerfile",
      },
    ],
  },
  {
    name: "rust-interpreter",
    description: "Programming language interpreter written in Rust",
    url: "https://github.com/Her0elt/rust-interpreter",
    languages: [
      {
        name: "Rust",
      },
      {
        name: "Makefile",
      },
    ],
  },
  {
    name: "portfolio",
    description:
      "Portfolio repo, that's also used for testing new web technology",
    url: "https://github.com/Her0elt/portfolio",
    languages: [
      {
        name: "JavaScript",
      },
      {
        name: "TypeScript",
      },
      {
        name: "CSS",
      },
    ],
  },
  {
    name: "NTNU",
    description:
      "Repo for all work done at NTNU (Bachelor in computer engineering, Master in computer science)",
    url: "https://github.com/Her0elt/NTNU",
    languages: [
      {
        name: "Java",
      },
      {
        name: "HTML",
      },
      {
        name: "CSS",
      },
    ],
  },
]);
