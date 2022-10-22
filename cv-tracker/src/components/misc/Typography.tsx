import { PropsWithChildren } from 'react';
import { twMerge } from 'tailwind-merge';

export type TypographyProps = {
  style?: string;
};

const Typography = ({ style, children }: PropsWithChildren<TypographyProps>) => {
  const className = twMerge(style, 'bg-secondary');
  return <h3 className={className}>{children}</h3>;
};

export default Typography;
