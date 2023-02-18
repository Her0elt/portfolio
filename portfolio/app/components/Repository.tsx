import { Box, Text, Link, Heading } from "@chakra-ui/react";
import type { Repository } from "~/utils/types";


export type RepositoryProps = {
    repo: Repository;
};

const RepositoryRender = ({repo }: RepositoryProps) => {
  return (
        <Box height={300} bg="white" maxW="sm" borderWidth="1px" borderRadius="lg" overflow="hidden" shadow="md" m={4}>
          <Box p={6}>
            <Heading as="h2" size="xl" mb={2}>
                {repo.name}
            </Heading>
            <Text fontSize="lg" mb={2}>
                {repo.description}
            </Text>
            <Link href={repo.url} color="blue.500">View Project</Link>
          </Box>
        </Box>
  );
};

export default RepositoryRender;

