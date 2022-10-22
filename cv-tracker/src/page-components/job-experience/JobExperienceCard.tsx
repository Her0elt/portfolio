import { JobExperience } from 'utils/types';

import Paper from 'components/misc/Paper';
import Typography from 'components/misc/Typography';

export type JobExperienceCardProps = {
  experience: JobExperience;
  onClick: () => void;
};

const JobExperienceCard = ({ experience, onClick }: JobExperienceCardProps) => {
  return (
    <Paper onClick={onClick}>
      <Typography style='mt-0 mb-2 text-xl font-medium leading-tight xl:text-4xl'>{experience.company}</Typography>
      <Typography style='text-md mt-0 mb-0 font-medium xl:text-2xl'>{experience.title}</Typography>
      <Typography style='text-md mt-0 mb-0 font-medium xl:text-2xl'>
        {experience.from} - {experience.to}
      </Typography>
      <Typography>{experience.description}</Typography>
    </Paper>
  );
};

export default JobExperienceCard;
