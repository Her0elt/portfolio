
import { Box, Text, Link, Heading } from "@chakra-ui/react";
import type { JobExperience } from "~/utils/types";


export type JobExperienceProps = {
    exp: JobExperience;
};

const JobExperienceRender = ({ exp }: JobExperienceProps ) => {
  return (
        <Box height={400} bg="white" maxW="sm" borderWidth="1px" borderRadius="lg" overflow="hidden" shadow="md" m={4}>
          <Box p={6}>
            <Text as="h2" fontSize="2xl" mb={2}>
                {exp.title}: {exp.from} - {exp.to}
            </Text>
            <Text fontSize="xl" mb={2}>
                {exp.company}
            </Text>
            <Text fontSize="lg" mb={2}>
                {exp.description}
            </Text>
          </Box>
        </Box>
  );
};

export default JobExperienceRender;
