import { BoxReveal } from "@/components/magicui/box-reveal";
import { Text } from "@/components/ui/text";
import type { MetaFunction } from "@remix-run/node";
import { Link } from "@remix-run/react";

export const meta: MetaFunction = () => {
  return [
    { title: "Hermann Portfolio" },
    {
      name: "description",
      content: "Welcome to the portfolio of Hermann Owren Elton!",
    },
  ];
};

export default function Index() {
  return (
    <main className="flex items-center mt-28 flex-col gap-20">
      <div>
        <BoxReveal>
          <Text className="text-center p-1" variant="h1" size="title">
            Hermann Owren Elton
          </Text>
        </BoxReveal>
      </div>
      <div className="flex flex-col md:ml-72 ml-0">
        <BoxReveal>
          <Text className="text-start" variant="h2" size="heading">
            Software engineer
          </Text>
        </BoxReveal>
      </div>
      <div className="flex gap-4 flex-col lg:ml-80 md:ml-60 ml-0 md:w-[55%] p-8 md:p-0">
        <BoxReveal>
          <Text className="text-start" variant="p" size="default">
            I am a skilled developer with a strong curiosity and passion for
            technology. I hold a degree in computer engineering, specializing in
            databases and search technology from NTNU. Throughout my studies,
            I’ve taken on relevant roles and part-time jobs, allowing me to
            build solid expertise in modern web development and teamwork.
          </Text>
        </BoxReveal>
        <BoxReveal>
          <Text className="text-start" variant="p" size="default">
            I enjoy challenges and love solving problems. {"I'm"} always eager
            to learn from others and appreciate deep conversations about
            development and technology. In my work, I focus on finding the best
            solutions to ensure the highest quality end product. I place great
            value on frequent and thorough testing to enable rapid development
            without compromising on quality. My dedication to development drives
            me to take responsibility for moving projects forward and ensuring
            the final product is of the highest standard.
          </Text>
        </BoxReveal>
      </div>
      <div className="flex flex-col lg:mr-80 md:mr-60 mr-0 md:w-[35%]">
        <BoxReveal>
          <Text className="text-start" variant="h3" size="default">
            Currently working for{" "}
            <Link
              className="underline"
              to="https://blank.no"
              target="_blank"
              rel="noreferrer"
            >
              Blank AS
            </Link>
          </Text>
        </BoxReveal>
      </div>
      <div className="flex flex-col lg:ml-80 md:ml-60 ml-0 w-[35%] pb-8">
        <BoxReveal>
          <div className="flex flex-col gap-4">
            <Text className="text-center">Links:</Text>
            <div className="flex gap-8">
              <Link
                to="https://github.com/her0elt"
                target="_blank"
                rel="noreferrer"
              >
                Github
              </Link>
              <Link to="mailto:me@her0elt.com" target="_blank" rel="noreferrer">
                Mail
              </Link>
            </div>
          </div>
        </BoxReveal>
      </div>
    </main>
  );
}
