import { Flex, Box, Heading, Text, Image, Link, Grid, GridItem } from "@chakra-ui/react";
import { useLoaderData } from "@remix-run/react";
import EducationRender from "~/components/Education";
import JobExperienceRender from "~/components/JobExperience";
import RepositoryRender from "~/components/Repository";
import TechnicalSkillRender from "~/components/TechnicalSkills";
import type { loader } from "~/routes/api/page-info";

export { loader } from "~/routes/api/page-info";


const Portfolio = () => {
      const {data} = useLoaderData<typeof loader>();

  return (
  <>
    <Flex height="100%" direction="column" align="center" bgGradient="linear(to-b, skyblue, black)">
      <Box mt={16} mb={16}>
        <Heading as="h1" size="2xl" color="white" mb={4} p={8}>
            Hermann Owren Elton
        </Heading>
      </Box>
        <Heading color="white" as="h1" size="2xl" mb={8}>
            Projects
        </Heading>
      <Grid mb={300} templateColumns={["repeat(1, 1fr)","repeat(2, 1fr)", "repeat(3, 1fr)"]}>
        {data.pinns && data.pinns.map((repo, index)  => (
            <GridItem key={index}>
                <RepositoryRender repo={repo}/>
            </GridItem>
        ))}
      </Grid>
      <Heading color="white" as="h1" size="2xl" mb={8}>
      Job Experience
      </Heading>
      <Grid mb={300} templateColumns={["repeat(1, 1fr)","repeat(2, 1fr)"]}>
      {data.jobExperiences && data.jobExperiences.sort((a,b) => +a.to - +b.to).map(exp  => (
                  <GridItem key={exp.id}>
                  <JobExperienceRender exp={exp}/>
                  </GridItem>
                  ))}
      </Grid>
      </Flex>

    <Flex height="100%" direction="column" align="center" bg="black">
      <Heading color="white" as="h1" size="2xl" mb={8}>
        Techinical Skills
      </Heading>
      <Grid mb={450} gridAutoFlow={["row","column"]}>
      {data.groupByCategory && Object.keys(data.groupByCategory).map((key, index)  => (
        <GridItem key={index}>
            <h2 style={{color: "white", textAlign: "center"}}  >{key}</h2>
            {/** @ts-ignore */}
            {data.groupByCategory[key].map(skill => (
                  <TechnicalSkillRender key={skill.id} skill={skill}/>
            ))}
        </GridItem>
                  ))}
      </Grid>
        <Heading color="white" as="h1" size="2xl" mb={8}>
            Education
        </Heading>
      <Grid mb={300} templateColumns={"repeat(1, 1fr)"}>
        {data.educations && data.educations.sort((a,b) => +a.to - +b.to).map(edu  => (
            <GridItem key={edu.id}>
                <EducationRender edu={edu}/>
            </GridItem>
        ))}
      </Grid>
    </Flex>
    </>
  );
};

export default Portfolio;

