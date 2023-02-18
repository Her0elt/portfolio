import { Box, Text } from "@chakra-ui/react";
import type { Education } from "~/utils/types";


export type EducationProps = {
    edu: Education;
};

const EducationRender = ({ edu }: EducationProps) => {
  return (
        <Box  bg="white" maxW="sm" borderWidth="1px" borderRadius="lg" overflow="hidden" shadow="md" m={4}>
          <Box p={6}>
            <Text fontSize="xl"fontWeight="bold" mb={2}>
                {edu.title}
            </Text>
            <Text fontSize="xl" mb={2}>
                {edu.school}: {edu.from} - {edu.to}
            </Text>
          </Box>
        </Box>
  );
};

export default EducationRender;
