import { addDoc, collection, doc, getDocs, setDoc } from '@firebase/firestore';

import firestore from 'utils/firebase';
import { TechnicalSkill, TechnicalSkillZod } from 'utils/types';

import { publicProcedure, router } from 'server/trpc/trpc';

const collectionName = 'technical-skills';
const collectionRef = collection(firestore, collectionName);

export const technicalSkillsRouter = router({
  all: publicProcedure.query(async () => {
    const result = await getDocs(collectionRef);
    result.forEach((doc) => console.log(doc.data()));
    return {
      entries: result.docs.map((doc) => {
        const data = { id: doc.id, ...doc.data() };
        return data as TechnicalSkill;
      }),
    };
  }),
  mutate: publicProcedure.input(TechnicalSkillZod).mutation(async (req) => {
    const skill = req.input as TechnicalSkill;
    if (skill.id) {
      await setDoc(doc(firestore, `${collectionName}/${skill.id}`), skill, { merge: true });
    } else {
      delete skill.id;
      await addDoc(collectionRef, skill);
    }
    return {
      message: 'Done',
    };
  }),
});
