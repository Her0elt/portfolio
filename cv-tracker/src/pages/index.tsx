import axios from 'axios';
import type { NextPage } from 'next';
import { useRouter } from 'next/router';
import { FormEvent } from 'react';

import Button from 'components/misc/Button';
import Paper from 'components/misc/Paper';
import Typography from 'components/misc/Typography';

const Home: NextPage = () => {
  const router = useRouter();
  const handleSubmit = async (event: FormEvent<HTMLFormElement>) => {
    event.preventDefault();

    const password = event.currentTarget.elements['pass'].value;
    try{
    const res = await axios.post('/api', {password: password});
    if (res.status == 200) {
      router.push('auth');
      return
    }

    }catch(err){
        alert("wrong password");

    }



  };
  return (
    <div className='grid place-content-center p-8 xl:p-28'>
      <Paper>
        <Typography style='mt-0 mb-2 text-xl font-medium leading-tight xl:text-4xl'>Enter Password to reveal content</Typography>
        <form className='place-content-content grid w-full gap-4' onSubmit={handleSubmit}>
          <input
            className='block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-sm text-gray-900 focus:border-blue-500 focus:ring-blue-500 dark:border-gray-600 dark:focus:border-blue-500 dark:focus:ring-blue-500'
            id='pass'
            name='pass'
            required
            type='password'
          />
          <Button type='submit'>Submit</Button>
        </form>
      </Paper>
    </div>
  );
};

export default Home;
