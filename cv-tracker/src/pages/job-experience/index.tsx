import type { NextPage } from 'next';
import { FormEvent, useState } from 'react';

import { trpc } from 'utils/trpc';
import { JobExperience } from 'utils/types';

import JobExperienceCard from 'page-components/job-experience/JobExperienceCard';
import JobExperienceForm from 'page-components/job-experience/JobExperienceForm';

import Modal from 'components/misc/Modal';

const JobExperiencePage: NextPage = () => {
  const experiences = trpc.jobExperience.all.useQuery();
  const util = trpc.useContext();
  const [open, setOpen] = useState(false);
  const [experience, setExperience] = useState<JobExperience | null>(null);
  const mutateJobExperience = trpc.jobExperience.mutate.useMutation({
    onSuccess() {
      util.jobExperience.all.invalidate();
    },
  });
  const handleSubmit = (event: FormEvent<HTMLFormElement>) => {
    event.preventDefault();

    const data: JobExperience = {
      id: experience?.id,
      title: event.currentTarget.elements['title'].value,
      company: event.currentTarget.elements['company'].value,
      from: event.currentTarget.elements['from'].value,
      to: event.currentTarget.elements['to'].value,
      description: event.currentTarget.elements['description'].value,
    };

    mutateJobExperience.mutate(data);
    setOpen(false);
  };

  return (
    <>
      <div className='m-4 grid grid-cols-1 gap-8 xl:m-20 xl:grid-cols-2'>
        <h1 className='col-span-full mt-0 mb-0 place-self-center text-3xl font-medium leading-tight xl:text-5xl'>Job Experience</h1>

        {experiences.data?.entries.map((exp) => (
          <JobExperienceCard
            experience={exp}
            key={exp.id}
            onClick={() => {
              setOpen(true);
              setExperience(exp);
            }}
          />
        ))}
        <Modal onClose={() => setOpen(false)} open={open}>
          <JobExperienceForm experience={experience} handleSubmit={handleSubmit} />
        </Modal>
      </div>
      <button
        className='fixed bottom-4 right-2 rounded-full border-b-4 border-blue-700 bg-blue-500 py-2 px-4 text-3xl font-bold text-white hover:border-blue-500 hover:bg-blue-400 xl:bottom-12 xl:right-4 xl:text-8xl'
        onClick={() => {
          setOpen(true);
          setExperience(null);
        }}>
        +
      </button>
    </>
  );
};

export default JobExperiencePage;
