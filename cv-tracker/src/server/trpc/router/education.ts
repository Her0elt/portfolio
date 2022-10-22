import { addDoc, collection, doc, getDocs, setDoc } from '@firebase/firestore';

import firestore from 'utils/firebase';
import { Education, EducationZod } from 'utils/types';

import { publicProcedure, router } from 'server/trpc/trpc';

const collectionName = 'education';
const collectionRef = collection(firestore, collectionName);

export const educationRouter = router({
  all: publicProcedure.query(async () => {
    const result = await getDocs(collectionRef);
    result.forEach((doc) => console.log(doc.data()));
    return {
      entries: result.docs.map((doc) => {
        const data = { id: doc.id, ...doc.data() };
        return data as Education;
      }),
    };
  }),
  mutate: publicProcedure.input(EducationZod).mutation(async (req) => {
    const ex = req.input as Education;
    if (ex.id) {
      await setDoc(doc(firestore, `${collectionName}/${ex.id}`), ex, { merge: true });
    } else {
      delete ex.id;
      await addDoc(collectionRef, ex);
    }
    return {
      message: 'Done',
    };
  }),
});
