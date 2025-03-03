"use client";
import { cn } from "@/lib/utils";
import { AnimatePresence, motion } from "framer-motion";
import { useState } from "react";
import { Text } from "./text";
import Link from "next/link";
import { RichText, ValEncodedString, ValRichText } from "@valbuild/next";

export const HoverEffect = ({
  items,
  className,
}: {
  items: {
    title: ValEncodedString;
    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    content: RichText<any>;
    link: ValEncodedString | null;
  }[];
  className?: string;
}) => {
  const [hoveredIndex, setHoveredIndex] = useState<number | null>(null);

  return (
    <section
      className={cn(
        "grid grid-cols-1 md:grid-cols-2  lg:grid-cols-3  py-10",
        className,
      )}
    >
      {items.map((item, idx) => {
        const Comp = item.link ? Link : "div";
        return (
          <Comp
            href={item?.link ?? "#"}
            key={idx}
            target="_blank"
            className="relative group  block p-2 h-full w-full"
            onMouseEnter={() => setHoveredIndex(idx)}
            onMouseLeave={() => setHoveredIndex(null)}
            rel="noreferrer"
          >
            <AnimatePresence>
              {hoveredIndex === idx && (
                <motion.span
                  className="absolute inset-0 h-full w-full bg-neutral-200 dark:bg-foreground block  rounded-3xl"
                  layoutId="hoverBackground"
                  initial={{ opacity: 0 }}
                  animate={{
                    opacity: 1,
                    transition: { duration: 0.15 },
                  }}
                  exit={{
                    opacity: 0,
                    transition: { duration: 0.15, delay: 0.2 },
                  }}
                />
              )}
            </AnimatePresence>
            <HoverCard>
              <HoverCardTitle>{item.title}</HoverCardTitle>
              <HoverCardDescription>
                <ValRichText>{item.content}</ValRichText>
              </HoverCardDescription>
            </HoverCard>
          </Comp>
        );
      })}
    </section>
  );
};

export const HoverCard = ({
  className,
  children,
}: {
  className?: string;
  children: React.ReactNode;
}) => {
  return (
    <div
      className={cn(
        "rounded-2xl h-full w-full p-4 overflow-hidden bg-background border border-transparent dark:border-foreground group-hover:border-slate-700 relative z-20",
        className,
      )}
    >
      <div className="relative z-50">
        <div className="p-4">{children}</div>
      </div>
    </div>
  );
};
export const HoverCardTitle = ({ children }: { children: React.ReactNode }) => {
  return (
    <Text className="mt-4" weight="bold" variant="h3" size="heading">
      {children}
    </Text>
  );
};
export const HoverCardDescription = ({
  children,
}: {
  children: React.ReactNode;
}) => {
  return (
    <Text className="mt-8 tracking-wide leading-relaxed" weight="bold">
      {children}
    </Text>
  );
};
