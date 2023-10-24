import type { NextPage } from 'next';
import { useRouter } from 'next/router';

import Button from 'components/misc/Button';
import Paper from 'components/misc/Paper';
import Typography from 'components/misc/Typography';

const Landing: NextPage = () => {
  const router = useRouter();

  return (
    <div className='grid grid-cols-1 gap-4 p-4 xl:grid-cols-2 xl:p-28'>
      <Paper>
        <Typography style='mt-0 mb-2 text-xl font-medium leading-tight xl:text-4xl'>Job experience</Typography>
        <Button onClick={() => router.push('auth/job-experience')}>Go to page</Button>
      </Paper>
      <Paper>
        <Typography style='mt-0 mb-2 text-xl font-medium leading-tight xl:text-4xl'>Education</Typography>
        <Button onClick={() => router.push('auth/education')}>Go to page</Button>
      </Paper>
      <Paper>
        <Typography style='mt-0 mb-2 text-xl font-medium leading-tight xl:text-4xl'>Technical skills</Typography>
        <Button onClick={() => router.push('auth/technical-skills')}>Go to page</Button>
      </Paper>
    </div>
  );
};
export default Landing;
