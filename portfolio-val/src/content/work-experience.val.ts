import { c, s, type t } from "../../val.config";

export const schema = s.array(
  s.object({
    title: s.string(),
    company: s.string(),
    description: s.string(),
    from: s.date(),
    to: s.date(),
  }),
);
export type WorkExperiences = t.inferSchema<typeof schema>;

export default c.define("/src/content/work-experience.val.ts", schema, [
  {
    title: "Part time",
    company: "Kantega",
    description:
      "Worked primarily on an administrative system consisting of a number of modules, developed to facilitate and improve the everyday working life of doctors, health secretaries and other employees in Norwegian medical offices. The project has, among other things, an HSE system, a staffing plan, a folder for storing documents, a task board and a waiting room screen for doctors' offices.\n \nThe project has a Remix frontend written in Typescript and a Quarkus backend written in Koltin. Relevio also integrates with external systems such as Algolia, Resend, NHI, FHI, YouTube and Clerk. The solution runs in and uses Google Cloud solutions such as Cloud Run, Cloud SQL, Cloud Storage and Artifact Registry.\n \nI had worked with the project both as part of my bachelor's thesis in 2022 and then as a part-time developer hired out as a consultant from Kantega alongside my studies. I assisted with both frontend and backend development, as well as setup in Google Cloud. I also helped build the system from scratch, and has therefore acquired unique experience in setting up a large and complex system.",
    to: "2024-06-05",
    from: "2022-08-01",
  },
  {
    title: "Sommer Intern",
    company: "Bekk",
    description:
      "The project consisted of surveying and developing a solution to improve the process of changing the user name of properties from email to website.  The website was developed with Next.js 13, with login with BankID and integration with Altinn.  As a side task on the project, I also helped another team that worked with kubernetes and ArgoCD, to develop a solution that could automatically set up and configure the BankID log into a kubernetes deployment.\n",
    to: "2023-07-26",
    from: "2023-06-20",
  },
  {
    title: "Summer intern",
    company: "Bekk",
    description:
      "Wordked on the project Toll og ferge for Fremtind service, where the task was to create an MVP for an android automotive application that could show the status of the toll balance, list out information about toll crossings, and an integration of the toll calculator for Fremtind service in the app. The project lasted over a summer and resulted in an unofficial publication of an android automotive application that could be installed on all cars using the Android automotive OS. The application was written in Kotlin with Andorid Studio and Jetpack Compose.\n",
    to: "2022-08-09",
    from: "2022-06-17",
  },
  {
    title: "Full-Stack developer",
    company: "TIHLDE",
    description:
      'The student association TIHLDE got its own website and membership system in 2018, which has support for the onboarding of new students, events, news, job advertisements and much more. The website and all systems connected to the website are operated by members of TIHLDE. I joined in 2020 and by then a user system and almost finished event system had already been created. Throughout his time on the project, I helped develop systems such as the wiki page, news, "Cookbook", bot system, and was one of the main developers on a restructuring of the access management system for the project.\n',
    to: "2022-06-12",
    from: "2020-01-01",
  },
  {
    title: "Teaching assistant",
    company: "NTNU",
    description:
      "Teaching assistant in the subject IDATT1001, where I guided students through fundamental Java and programming concepts, like oop and clean code.\n\n\n",
    to: "2021-11-30",
    from: "2021-08-01",
  },
  {
    title: "Teaching assistant",
    company: "NTNU",
    description:
      "Teaching assistant in IDATT2105, where I guided students through the fundamentals of web development. The subject used vuejs and Java with spring boot.",
    to: "2022-04-22",
    from: "2022-01-01",
  },
  {
    title: "Summer Intern",
    company: "Norgesgruppen Data AS ",
    description:
      "Attended their summer internship, our project revolved around error detection with machine learning and visualization of system dependencies. Here I used technologies such as Tensorflow and the Elastic stack.",
    to: "2021-08-09",
    from: "2021-06-10",
  },
  {
    title: "Teaching assistant",
    company: "NTNU",
    description:
      "Teaching assistant in the subject IDATT2106 System development, where I guided students through how to do a project, where the students needed to organize themselves and execute the project based on teaching in Agile development.",
    to: "2021-04-22",
    from: "2021-06-01",
  },
]);