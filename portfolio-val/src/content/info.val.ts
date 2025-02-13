import { s, c, t } from "../../val.config";

export const schema = s.object({
  title: s.string(),
  sections: s.array(
    s.object({
      title: s.string(),
      content: s.array(s.object({ text: s.richtext() })),
    }),
  ),
  job: s.object({
    name: s.string(),
    link: s.string(),
  }),
});

export type Info = t.inferSchema<typeof schema>;

export default c.define("/src/content/info.val.ts", schema, {
  title: "Hermann Elton",
  sections: [
    {
      title: "Software engineer",
      content: [{ text: [{ tag: "p", children: ["I am a skilled developer with a strong curiosity and passion for technology. I hold a degree in computer engineering, specializing in databases and search technology from NTNU. Throughout my studies, I’ve taken on relevant roles and part-time jobs, allowing me to build solid expertise in modern web development and teamwork."] }] }, { text: [{ tag: "p", children: ["I enjoy challenges and love solving problems. I'm always eager to learn from others and appreciate deep conversations about development and technology. In my work, I focus on finding the best solutions to ensure the highest quality end product. I place great value on frequent and thorough testing to enable rapid development without compromising on quality. My dedication to development drives me to take responsibility for moving projects forward and ensuring the final product is of the highest standard."] }] }],
    },
  ],
  job: {
    name: "Blank AS",
    link: "https://www.blank.no",
  },
});
