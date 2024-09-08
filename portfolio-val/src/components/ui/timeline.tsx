"use client";
import { useScroll, useTransform, motion } from "framer-motion";
import React, { useEffect, useRef, useState } from "react";
import { Text } from "./text";

interface TimelineEntry {
  title: string;
  content: React.ReactNode;
}

export const Timeline = ({
  data,
  title,
}: {
  data: TimelineEntry[];
  title: string;
}) => {
  const ref = useRef<HTMLDivElement>(null);
  const containerRef = useRef<HTMLDivElement>(null);
  const [height, setHeight] = useState(0);

  useEffect(() => {
    if (ref.current) {
      const rect = ref.current.getBoundingClientRect();
      setHeight(rect.height);
    }
  }, [ref]);

  const { scrollYProgress } = useScroll({
    target: containerRef,
    offset: ["start 10%", "end 50%"],
  });

  const heightTransform = useTransform(scrollYProgress, [0, 1], [0, height]);
  const opacityTransform = useTransform(scrollYProgress, [0, 0.1], [0, 1]);

  return (
    <div className="w-full bg-background  md:px-10" ref={containerRef}>
      <div className="max-w-7xl mx-auto mt-10 px-4 md:px-8 lg:px-10">
        <Text variant="h2" className="text-lg md:text-4xl  max-w-4xl">
          {title}
        </Text>
      </div>

      <div ref={ref} className="relative max-w-7xl mx-auto pb-20">
        {data.map((item, index) => (
          <div
            key={index}
            className="flex justify-start pt-10 md:pt-40 md:gap-10"
          >
            <div className="sticky flex flex-col md:flex-row z-40 items-center top-40 self-start max-w-xs lg:max-w-sm md:w-full">
              <div className="h-10 absolute left-3 md:left-3 w-10 rounded-full bg-foreground flex items-center justify-center">
                <div className="h-4 w-4 rounded-full bg-background  border border-background p-2" />
              </div>
              <Text
                variant="h3"
                className="hidden md:block text-xl md:pl-20 md:text-2xl"
                weight="bold"
              >
                {item.title}
              </Text>
            </div>

            <div className="relative pl-20 pr-4 md:pl-4 w-full">
              <Text
                variant="h3"
                className="md:hidden block text-2xl mb-4 text-left"
                weight="bold"
              >
                {item.title}
              </Text>
              <div>{item.content}</div>
            </div>
          </div>
        ))}
        <div
          style={{
            height: height + "px",
          }}
          className="lg:block hidden absolute md:left-8 left-8 top-0 overflow-hidden w-[2px] bg-[linear-gradient(to_bottom,var(--tw-gradient-stops))] from-transparent from-[0%] via-neutral-200 dark:via-neutral-700 to-transparent to-[99%]  [mask-image:linear-gradient(to_bottom,transparent_0%,black_10%,black_90%,transparent_100%)]"
        >
          <motion.div
            style={{
              height: heightTransform,
              opacity: opacityTransform,
            }}
            className="absolute inset-x-0 top-0  w-[2px] bg-foreground rounded-full"
          />
        </div>
      </div>
    </div>
  );
};
