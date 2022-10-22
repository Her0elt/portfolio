import { Education } from 'utils/types';

import Paper from 'components/misc/Paper';

export type EducationCardCardProps = {
  education: Education;
  onClick: () => void;
};

const EducationCard = ({ education, onClick }: EducationCardCardProps) => {
  return (
    <Paper onClick={onClick}>
      <div className='mt-0 mb-2 text-xl font-medium leading-tight xl:text-4xl'>{education.title}</div>
      <div className='text-md mt-0 mb-0 font-medium xl:text-2xl'>{education.school}</div>
      <div className='text-md mt-0 mb-0 font-medium xl:text-2xl'>
        {education.from} - {education.to}
      </div>
    </Paper>
  );
};

export default EducationCard;
