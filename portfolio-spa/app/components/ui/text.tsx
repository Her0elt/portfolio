import { cn } from "@/lib/utils";
import { cva } from "class-variance-authority";
import React from "react";

export type TextVariant = "h1" | "h2" | "h3" | "p";
export type TextSize =
  | "tiny"
  | "small"
  | "default"
  | "large"
  | "heading"
  | "title"
  | "inherit";
export type TextWeight = "regular" | "bold" | "bolder" | "inherit";
export type TextColor = "primary" | "secondary" | "inherit";
export type TextMargin = "sm" | "md" | "lg" | "xl" | "2xl";

export type TextProps = {
  variant?: TextVariant;
  size?: TextSize;
  weight?: TextWeight;
} & React.HTMLAttributes<HTMLElement>;

const textVariants = cva("m-0", {
  variants: {
    size: {
      tiny: "text-xs",
      small: "text-sm",
      default: "text-base",
      large: "text-lg",
      heading: "text-2xl",
      title: "text-4xl",
      inherit: "text-inherit",
    },
    weight: {
      regular: "font-normal",
      bold: "font-bold",
      bolder: "font-extrabold",
      inherit: "font-inherit",
    },
  },
  defaultVariants: {
    size: "default",
    weight: "regular",
  },
});

export const Text = React.forwardRef<HTMLHeadingElement, TextProps>(
  ({ variant = "p", children, className, size, weight, ...props }, ref) => {
    const Component = variant;

    return (
      <Component
        className={cn(textVariants({ weight, size, className }))}
        {...props}
        ref={ref}
      >
        {children}
      </Component>
    );
  }
);
Text.displayName = "Text";
