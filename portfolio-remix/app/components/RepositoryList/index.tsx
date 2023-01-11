
import type { Repository } from '../../generated/types'
import Paper, { links as paperLinks} from '~/components/Paper'
import styles from './styles.css';

export const links = () => [{ rel: 'stylesheet', href: styles }, ...paperLinks()];

export type RepositoryListProps = {
    repositories : Array<Repository>;
}
const RepositoryList = ({ repositories } : RepositoryListProps) => {
  return (

    <div className='pinnContainter'>
      {repositories && repositories.map((repo) =>(
                  <a key={repo.name} href={repo.url}>
        <Paper  shadow>
        <div className="title">{repo.name}</div>
        <div className="desc">{repo.description}</div>
      </Paper>
      </a>
      ))}
    </div>


  );
}

export default RepositoryList;
