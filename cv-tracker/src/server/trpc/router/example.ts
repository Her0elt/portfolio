import { router, publicProcedure } from "../trpc";
import { z } from "zod";
import firestore from "../../../utils/firebase";
import {JobExperience, JobExperienceZod } from "../../../utils/types";
import {collection,doc, setDoc, getDocs} from "@firebase/firestore";

const jobExperienceCollection = collection(firestore,'job-experience')


export const exampleRouter = router({
    jobExperience: publicProcedure
    .query(async () => {
        const result = await getDocs(jobExperienceCollection)
        result.forEach( doc => console.log(doc.data()))
      return {
          entries: result.docs.map(doc => {
              const data = { id: doc.id, ...doc.data()}
              return data as JobExperience
          }),
      };
    }),
    mutateJobExperience: publicProcedure
        .input(JobExperienceZod)
        .mutation( async (req: any) => {
            const ex = req.input as JobExperience
            await setDoc(doc(firestore, `job-experience/${ex.id}`), ex, { merge: true} )
            return {
                message: "Done"
            }
        })
});
