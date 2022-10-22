import { JobExperience } from 'utils/types';

import Paper from 'components/misc/Paper';

export type JobExperienceCardProps = {
  experience: JobExperience;
  onClick: () => void;
};

const JobExperienceCard = ({ experience, onClick }: JobExperienceCardProps) => {
  return (
    <Paper onClick={onClick}>
      <div className='mt-0 mb-2 text-xl font-medium leading-tight xl:text-4xl'>{experience.company}</div>
      <div className='text-md mt-0 mb-0 font-medium xl:text-2xl'>{experience.title}</div>
      <div className='text-md mt-0 mb-0 font-medium xl:text-2xl'>
        {experience.from} - {experience.to}
      </div>
      <p>{experience.description}</p>
    </Paper>
  );
};

export default JobExperienceCard;
