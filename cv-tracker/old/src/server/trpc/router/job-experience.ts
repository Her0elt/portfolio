import { addDoc, collection, doc, getDocs, setDoc } from '@firebase/firestore';

import firestore from 'utils/firebase';
import { JobExperience, JobExperienceZod } from 'utils/types';

import { publicProcedure, router } from 'server/trpc/trpc';

const collectionName = 'job-experience';
const jobExperienceCollection = collection(firestore, collectionName);

export const jobExperienceRouter = router({
  all: publicProcedure.query(async () => {
    const result = await getDocs(jobExperienceCollection);
    result.forEach((doc) => console.log(doc.data()));
    return {
      entries: result.docs.map((doc) => {
        const data = { id: doc.id, ...doc.data() };
        return data as JobExperience;
      }),
    };
  }),
  mutate: publicProcedure.input(JobExperienceZod).mutation(async (req) => {
    const ex = req.input as JobExperience;
    if (ex.id) {
      await setDoc(doc(firestore, `${collectionName}/${ex.id}`), ex, { merge: true });
    } else {
      delete ex.id;
      await addDoc(jobExperienceCollection, ex);
    }
    return {
      message: 'Done',
    };
  }),
});
