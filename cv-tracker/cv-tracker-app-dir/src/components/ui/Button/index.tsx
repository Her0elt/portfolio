import { twMerge } from "tailwind-merge";

export type ButtonProps = React.ButtonHTMLAttributes<HTMLButtonElement>;

export function Button({ className, children, ...props }: ButtonProps) {
  const style = twMerge(
    "bg-gray-300 hover:bg-gray-400 text-gray-800 font-bold py-2 px-4 rounded inline-flex items-center",
    className,
  );
  return (
    <button className={style} {...props}>
      {children}
    </button>
  );
}
