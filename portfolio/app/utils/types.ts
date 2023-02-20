export type Repository = {
    name: string;
    description: string;
    url: string;
};

export type Education = {
    id: string;
    from: string;
    to: string;
    school: string;
    title: string;
}

export type JobExperience = {
    id: string;
    from: string;
    to: string;
    company: string;
    description: string;
    title: string;
}

export type TechnicalSkills = {
    id: string;
    category: string;
    skill: string;
}

export type PageInfo = {
    pinns: Array<Repository>;
    educations: Array<Education>;
    jobExperiences: Array<JobExperience>;
    technicalSkills: Array<TechnicalSkills>;
    groupByCategory: Map<string, Array<TechnicalSkills>>;
}

export type GraphqlResponse<T> = {
    data: T
}
