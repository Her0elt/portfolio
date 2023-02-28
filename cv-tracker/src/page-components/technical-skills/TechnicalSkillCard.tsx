import { TechnicalSkill } from 'utils/types';

import Paper from 'components/misc/Paper';
import Typography from 'components/misc/Typography';

export type TechnicalSkillProps = {
  skill: TechnicalSkill;
  onClick: () => void;
};

const TechnicalSkillCard = ({ skill, onClick }: TechnicalSkillProps) => {
  return (
    <Paper onClick={onClick}>
      <Typography style='text-md mt-0 mb-0 font-medium xl:text-2xl'>
        {skill.category} : {skill.skill}
      </Typography>
    </Paper>
  );
};

export default TechnicalSkillCard;
