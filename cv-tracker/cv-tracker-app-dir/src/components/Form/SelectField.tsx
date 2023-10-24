import { useId } from "react";
import { twMerge } from "tailwind-merge";

export type SelectFieldProps = React.DetailedHTMLProps<
  React.SelectHTMLAttributes<HTMLSelectElement>,
  HTMLSelectElement
> & {
  label?: string;
  options?: Array<{ value: string; label: string }>;
};

export function SelectField({
  className,
  label,
  options,
  children,
  id,
  ...props
}: SelectFieldProps) {
  const generatedId = useId();
  const style = twMerge(
    "bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5",
    className,
  );
  return (
    <div className="flex w-full flex-col">
      <label htmlFor={id ?? generatedId}>{label}</label>
      <select className={style} id={id ?? generatedId} {...props}>
        {options
          ? options.map((option) => (
              <option key={option.value} value={option.value}>
                {option.label}
              </option>
            ))
          : children}
      </select>
    </div>
  );
}
