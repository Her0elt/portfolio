import { FormEvent } from 'react';

import { JobExperience } from 'utils/types';

import Modal from 'components/misc/Modal';
import SubmitButton from 'components/misc/SubmitButton';

export type JobExperienceFormProps = {
  open: boolean;
  onClose: () => void;
  experience: JobExperience | null;
  handleSubmit: (event: FormEvent<HTMLFormElement>) => void;
};

const JobExperienceForm = ({ experience, handleSubmit, onClose, open }: JobExperienceFormProps) => {
  return (
    <form onSubmit={handleSubmit}>
      <Modal actionBtn={<SubmitButton />} onClose={onClose} open={open}>
        <div className='mb-6 grid grid-cols-1 gap-4 bg-secondary p-0 xl:p-4'>
          <div className='w-full'>
            <label className='mb-2 italic' htmlFor='company'>
              Company
            </label>
            <input
              className='block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-sm text-gray-900 focus:border-blue-500 focus:ring-blue-500 dark:border-gray-600 dark:focus:border-blue-500 dark:focus:ring-blue-500'
              defaultValue={experience?.company}
              id='company'
              name='company'
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
              defaultValue={experience?.title}
              id='title'
              name='title'
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
                defaultValue={experience?.from}
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
                defaultValue={experience?.to}
                id='to'
                name='to'
                required
                type='text'
              />
            </div>
          </div>
          <div className='mb-3 xl:w-96'>
            <label className='mb-2 italic' htmlFor='description'>
              Description
            </label>
            <textarea
              className='block w-full resize-none rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-sm text-gray-900 focus:border-blue-500 focus:ring-blue-500 dark:border-gray-600 dark:focus:border-blue-500 dark:focus:ring-blue-500'
              defaultValue={experience?.description}
              id='description'
              name='description'
              required
              rows={8}
            />
          </div>
          <button
            className='inline-block rounded bg-blue-600 px-6 py-2.5 text-xs font-medium uppercase leading-tight text-white shadow-md transition duration-150 ease-in-out hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg'
            type='submit'>
            Submit
          </button>
        </div>
      </Modal>
    </form>
  );
};

export default JobExperienceForm;
