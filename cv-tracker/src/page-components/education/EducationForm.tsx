import { FormEvent } from 'react';

import { Education } from 'utils/types';

export type EducationFormProps = {
  education: Education | null;
  handleSubmit: (event: FormEvent<HTMLFormElement>) => void;
};

const EducationForm = ({ education, handleSubmit }: EducationFormProps) => {
  return (
    <form onSubmit={handleSubmit}>
      <div className='mb-6 grid grid-cols-1 gap-4 p-4'>
        <div className='w-full'>
          <label className='mb-2 italic' htmlFor='company'>
            Company
          </label>
          <input
            className='block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-sm text-gray-900 focus:border-blue-500 focus:ring-blue-500 dark:border-gray-600 dark:focus:border-blue-500 dark:focus:ring-blue-500'
            defaultValue={education?.title}
            id='title'
            name='title'
            required
            type='text'
          />
        </div>
        <div className='w-full'>
          <label className='mb-2 italic' htmlFor='title'>
            Title
          </label>
          <input
            className='block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-sm text-gray-900 focus:border-blue-500 focus:ring-blue-500 dark:border-gray-600 dark:focus:border-blue-500 dark:focus:ring-blue-500'
            defaultValue={education?.school}
            id='school'
            name='school'
            required
            type='text'
          />
        </div>
        <div className='grid w-full gap-2 lg:grid-cols-1 xl:grid-cols-2'>
          <div>
            <label className='mb-2 italic' htmlFor='from'>
              From
            </label>
            <input
              className='block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-sm text-gray-900 focus:border-blue-500 focus:ring-blue-500 dark:border-gray-600 dark:focus:border-blue-500 dark:focus:ring-blue-500'
              defaultValue={education?.from}
              id='from'
              name='from'
              required
              type='text'
            />
          </div>
          <div>
            <label className='mb-2 italic' htmlFor='company'>
              To
            </label>
            <input
              className='block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-sm text-gray-900 focus:border-blue-500 focus:ring-blue-500 dark:border-gray-600 dark:focus:border-blue-500 dark:focus:ring-blue-500'
              defaultValue={education?.to}
              id='to'
              name='to'
              required
              type='text'
            />
          </div>
        </div>
        <button
          className='inline-block rounded bg-blue-600 px-6 py-2.5 text-xs font-medium uppercase leading-tight text-white shadow-md transition duration-150 ease-in-out hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg'
          type='submit'>
          Submit
        </button>
      </div>
    </form>
  );
};

export default EducationForm;
