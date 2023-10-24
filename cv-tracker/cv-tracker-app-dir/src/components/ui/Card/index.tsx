import { twMerge } from "tailwind-merge";

export function Card({
  children,
  className,
  fixHeight,
}: {
  children: React.ReactNode;
  className?: string;
  fixHeight?: boolean;
}) {
  const style = twMerge(
    "rounded-md bg-white p-8 shadow-sm lg:max-w-md max-w-full w-full md:w-auto",
    className,
    fixHeight && "md:h-80 h-auto",
  );
  return <div className={style}>{children}</div>;
}

export function CardHeader({
  children,
  className,
}: {
  children: React.ReactNode;
  className?: string;
}) {
  const style = twMerge("border-b border-gray-200 p-2", className);
  return <div className={style}>{children}</div>;
}

export function CardTitle({
  children,
  className,
}: {
  children: React.ReactNode;
  className?: string;
}) {
  const style = twMerge("font-medium text-gray-900", className);
  return <h3 className={style}>{children}</h3>;
}
export function CardContent({
  children,
  className,
}: {
  children: React.ReactNode;
  className?: string;
}) {
  const style = twMerge("text-gray-900", className);
  return <div className={style}>{children}</div>;
}
