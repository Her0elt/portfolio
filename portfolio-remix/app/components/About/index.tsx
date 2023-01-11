import {text1, text2} from '~/utils';

import Paper, { links as paperLinks} from '~/components/Paper'
import styles from './styles.css';

export const links = () => [{ rel: 'stylesheet', href: styles }, ...paperLinks()];

const About = () => {
  return (
  <Paper styles="text_container">
        <p>
            {text1}
        </p>
        <p>
            {text2}
        </p>
    </Paper>
  );
};

export default About;
