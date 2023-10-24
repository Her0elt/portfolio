import { Education } from 'utils/types';

import Paper from 'components/misc/Paper';
import Typography from 'components/misc/Typography';

export type EducationCardCardProps = {
  education: Education;
  onClick: () => void;
};

const EducationCard = ({ education, onClick }: EducationCardCardProps) => {
  return (
    <Paper onClick={onClick}>
      <Typography style='mt-0 mb-2 text-xl font-medium leading-tight xl:text-4xl'>{education.title}</Typography>
      <Typography style='text-md mt-0 mb-0 font-medium xl:text-2xl'>{education.school}</Typography>
      <Typography style='text-md mt-0 mb-0 font-medium xl:text-2xl'>
        {education.from} - {education.to}
      </Typography>
    </Paper>
  );
};

export default EducationCard;
