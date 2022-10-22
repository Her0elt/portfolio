import type { NextPage } from 'next';
import { FormEvent, useState } from 'react';

import { trpc } from 'utils/trpc';
import { Education } from 'utils/types';

import EducationCard from 'page-components/education/EducationCard';
import EducationForm from 'page-components/education/EducationForm';

import HoverButton from 'components/misc/HoverButton';

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
        <EducationForm education={education} handleSubmit={handleSubmit} onClose={() => setOpen(false)} open={open} />
      </div>
      <HoverButton
        onClick={() => {
          setOpen(true);
          setEducation(null);
        }}>
        +
      </HoverButton>
    </>
  );
};

export default JobExperiencePage;
