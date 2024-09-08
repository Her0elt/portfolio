"use client";
import { BoxReveal } from "@/components/magicui/box-reveal";
import { Text } from "@/components/ui/text";
import { useVal } from "@/val/val.client";
import infoContent from "@/content/info.val";

import Link from "next/link";
import { Fragment } from "react";

export default function Index() {
  const info = useVal(infoContent);
  return (
    <main className="flex items-center mt-28 flex-col gap-20">
      <div>
        <BoxReveal>
          <Text className="text-center p-1" variant="h1" size="title">
            {info.title}
          </Text>
        </BoxReveal>
      </div>
      {info.sections.map((sec) => (
        <Fragment key={sec.title}>
          <div className="flex flex-col md:ml-72 ml-0">
            <BoxReveal>
              <Text className="text-start" variant="h2" size="heading">
                {sec.title}
              </Text>
            </BoxReveal>
          </div>
          <div className="flex gap-4 flex-col lg:ml-80 md:ml-60 ml-0 md:w-[55%] p-8 md:p-0">
            {sec.content.map((cont, i) => (
              <BoxReveal key={i}>
                <Text className="text-start" variant="p" size="default">
                  {cont.text}
                </Text>
              </BoxReveal>
            ))}
          </div>
        </Fragment>
      ))}
      <div className="flex flex-col lg:mr-80 md:mr-60 mr-0 md:w-[35%]">
        <BoxReveal>
          <Text className="text-start" variant="h3" size="default">
            Currently working for{" "}
            <Link
              className="underline"
              href={info.job.link}
              target="_blank"
              rel="noreferrer"
            >
              {info.job.name}
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
                href="https://github.com/her0elt"
                target="_blank"
                rel="noreferrer"
              >
                Github
              </Link>
              <Link
                href="mailto:me@her0elt.com"
                target="_blank"
                rel="noreferrer"
              >
                Mail
              </Link>
            </div>
          </div>
        </BoxReveal>
      </div>
    </main>
  );
}
