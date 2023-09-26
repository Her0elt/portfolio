import { FormEvent } from 'react';

import { TechnicalSkill } from 'utils/types';

import Modal from 'components/misc/Modal';
import SubmitButton from 'components/misc/SubmitButton';

export type TechnicalSkillFormProps = {
  skill: TechnicalSkill | null;
  open: boolean;
  onClose: () => void;
  handleSubmit: (event: FormEvent<HTMLFormElement>) => void;
};

const TechnicalSkillForm = ({ skill, handleSubmit, onClose, open }: TechnicalSkillFormProps) => {
  return (
    <form onSubmit={handleSubmit}>
      <Modal actionBtn={<SubmitButton />} onClose={onClose} open={open}>
        <div className='mb-6 grid grid-cols-1 gap-4 bg-secondary p-0 xl:p-4'>
          <div className='w-full'>
            <label className='mb-2 italic' htmlFor='company'>
              Skill
            </label>
            <input
              className='block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-sm text-gray-900 focus:border-blue-500 focus:ring-blue-500 dark:border-gray-600 dark:focus:border-blue-500 dark:focus:ring-blue-500'
              defaultValue={skill?.skill}
              id='skill'
              name='skill'
              required
              type='text'
            />
          </div>
          <div className='w-full'>
            <label className='mb-2 italic' htmlFor='title'>
              Category
            </label>
            <input
              className='block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-sm text-gray-900 focus:border-blue-500 focus:ring-blue-500 dark:border-gray-600 dark:focus:border-blue-500 dark:focus:ring-blue-500'
              defaultValue={skill?.category}
              id='category'
              name='category'
              required
              type='text'
            />
          </div>
        </div>
      </Modal>
    </form>
  );
};

export default TechnicalSkillForm;
