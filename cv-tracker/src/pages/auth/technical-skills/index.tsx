import type { NextPage } from 'next';
import { FormEvent, useState } from 'react';

import { trpc } from 'utils/trpc';
import { TechnicalSkill } from 'utils/types';

import TechnicalSkillCard from 'page-components/technical-skills/TechnicalSkillCard';
import TechnicalSkillForm from 'page-components/technical-skills/TechnicalSkillForm';

import HoverButton from 'components/misc/HoverButton';

const TechnicalSkillsPage: NextPage = () => {
  const experiences = trpc.technicalSkill.all.useQuery();
  const util = trpc.useContext();
  const [open, setOpen] = useState(false);
  const [skill, setSkill] = useState<TechnicalSkill | null>(null);
  const mutateJobExperience = trpc.technicalSkill.mutate.useMutation({
    onSuccess() {
      util.jobExperience.all.invalidate();
    },
  });
  const handleSubmit = (event: FormEvent<HTMLFormElement>) => {
    event.preventDefault();

    const data: TechnicalSkill = {
      id: skill?.id,
      skill: event.currentTarget.elements['skill'].value,
      category: event.currentTarget.elements['category'].value,
    };

    mutateJobExperience.mutate(data);
    setOpen(false);
  };

  return (
    <>
      <div className='m-4 grid grid-cols-1 gap-8 xl:m-20 xl:grid-cols-2'>
        <h1 className='col-span-full mt-0 mb-0 place-self-center text-3xl font-medium leading-tight xl:text-5xl'>Technical skills</h1>

        {experiences.data?.entries.map((skill) => (
          <TechnicalSkillCard
            key={skill.id}
            onClick={() => {
              setOpen(true);
              setSkill(skill);
            }}
            skill={skill}
          />
        ))}
        <TechnicalSkillForm handleSubmit={handleSubmit} onClose={() => setOpen(false)} open={open} skill={skill} />
      </div>
      <HoverButton
        onClick={() => {
          setOpen(true);
          setSkill(null);
        }}>
        +
      </HoverButton>
    </>
  );
};

export default TechnicalSkillsPage;
