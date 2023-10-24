import { FormEvent } from 'react';

import { Education } from 'utils/types';

import Modal from 'components/misc/Modal';
import SubmitButton from 'components/misc/SubmitButton';

export type EducationFormProps = {
  education: Education | null;
  open: boolean;
  onClose: () => void;
  handleSubmit: (event: FormEvent<HTMLFormElement>) => void;
};

const EducationForm = ({ education, handleSubmit, onClose, open }: EducationFormProps) => {
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
        </div>
      </Modal>
    </form>
  );
};

export default EducationForm;
