import type { ReactNode } from 'react';

import styles from './styles.css';
import classnames from 'classnames';

export const links = () => [{ rel: 'stylesheet', href: styles }];

export type PaperProps = {
children: ReactNode;
  shadow?: boolean;
  noPadding?: boolean;
  styles?: string;
};

const Paper = ({ shadow, noPadding, styles="", children }: PaperProps) => {
  return (
    <div className={`${styles} box`}>
      {children}
    </div>
  );
};

export default Paper;

