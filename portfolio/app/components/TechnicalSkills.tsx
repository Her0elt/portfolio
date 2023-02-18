import { Box, Text } from "@chakra-ui/react";
import type { TechnicalSkills } from "~/utils/types";


export type TechnicalSkillsProps = {
    skill: TechnicalSkills;
};

const TechnicalSkillRender = ({ skill }: TechnicalSkillsProps) => {
  return (
        <Box  bg="white" maxW="sm" borderWidth="1px" borderRadius="lg" overflow="hidden" shadow="md" m={4}>
          <Box p={6}>
            <Text fontSize="lg" mb={2}>
                {skill.category}: {skill.skill}
            </Text>
          </Box>
        </Box>
  );
};

export default TechnicalSkillRender;
