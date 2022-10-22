import type { NextPage } from 'next';
import { FormEvent, useState } from 'react';

import { trpc } from 'utils/trpc';
import { Education } from 'utils/types';

import EducationCard from 'page-components/education/EducationCard';
import EducationForm from 'page-components/education/EducationForm';

import Modal from 'components/misc/Modal';

const JobExperiencePage: NextPage = () => {
  const result = trpc.education.all.useQuery();
  const util = trpc.useContext();
  const [open, setOpen] = useState(false);
  const [education, setEducation] = useState<Education | null>(null);
  const mutateEducation = trpc.education.mutate.useMutation({
    onSuccess() {
      util.education.all.invalidate();
    },
  });
  const handleSubmit = (event: FormEvent<HTMLFormElement>) => {
    event.preventDefault();

    const data: Education = {
      id: education?.id,
      title: event.currentTarget.elements['title'].value,
      school: event.currentTarget.elements['school'].value,
      from: event.currentTarget.elements['from'].value,
      to: event.currentTarget.elements['to'].value,
    };

    mutateEducation.mutate(data);
    setOpen(false);
  };

  return (
    <>
      <div className='m-4 grid grid-cols-1 gap-8 xl:m-20 xl:grid-cols-2'>
        <h1 className='col-span-full mt-0 mb-0 place-self-center text-3xl font-medium leading-tight xl:text-5xl'>Education</h1>

        {result.data?.entries.map((exp) => (
          <EducationCard
            education={exp}
            key={exp.id}
            onClick={() => {
              setOpen(true);
              setEducation(exp);
            }}
          />
        ))}
        <Modal onClose={() => setOpen(false)} open={open}>
          <EducationForm education={education} handleSubmit={handleSubmit} />
        </Modal>
      </div>
      <button
        className='fixed bottom-4 right-2 rounded-full border-b-4 border-blue-700 bg-blue-500 py-2 px-4 text-3xl font-bold text-white hover:border-blue-500 hover:bg-blue-400 xl:bottom-12 xl:right-4 xl:text-8xl'
        onClick={() => {
          setOpen(true);
          setEducation(null);
        }}>
        +
      </button>
    </>
  );
};

export default JobExperiencePage;
