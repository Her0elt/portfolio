import { initializeApp } from "firebase/app";
import { collection, getFirestore } from "@firebase/firestore";
import { env } from "~/env.mjs";
const firebaseConfig = {
  apiKey: env.API_KEY,
  authDomain: env.AUTH_DOMAIN,
  projectId: env.PROJECT_ID,
  storageBucket: env.STORAGE_BUCKET,
  messagingSenderId: env.MESSAGEING_SENDER_ID,
  appId: env.APP_ID,
};

initializeApp(firebaseConfig);
export const firestore = getFirestore();

export const collectionNameJobExperience = "job-experience";
export const jobExperienceCollection = collection(
  firestore,
  collectionNameJobExperience,
);

export const collectionNameTechinicalSkills = "technical-skills";
export const technicalSkillsCollection = collection(
  firestore,
  collectionNameTechinicalSkills,
);
export const collectionNameEducation = "education";
export const educationCollection = collection(
  firestore,
  collectionNameEducation,
);

export const db = {
  firestore,
  jobExperienceCollection,
  technicalSkillsCollection,
  educationCollection,
};
