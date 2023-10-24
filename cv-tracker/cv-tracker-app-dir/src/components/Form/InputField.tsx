import { useId } from "react";
import { twMerge } from "tailwind-merge";

export type InputFieldProps = React.DetailedHTMLProps<
  React.InputHTMLAttributes<HTMLInputElement>,
  HTMLInputElement
> & {
  label?: string;
};

export function InputField({
  className,
  label,
  id,
  ...props
}: InputFieldProps) {
  const generatedId = useId();
  const style = twMerge(
    "block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-sm text-gray-900 focus:border-blue-500 focus:ring-blue-500",
    className,
  );
  return (
    <div className="flex w-full flex-col">
      <label htmlFor={id ?? generatedId}>{label}</label>
      <input className={style} id={id ?? generatedId} {...props} />
    </div>
  );
}
