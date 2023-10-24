import { z } from "zod";

import { createTRPCRouter, protectedProcedure } from "~/server/api/trpc";
import {
  addDoc,
  doc,
  getDocs,
  setDoc,
  getDoc,
  deleteDoc,
} from "@firebase/firestore";
import { collectionNameTechinicalSkills } from "~/server/db";

export const TechinicalSkillZod = z.object({
  id: z.string(),
  skill: z.string(),
  category: z.string(),
});

export const TechinicalSkillMutateSchema = TechinicalSkillZod.omit({
  id: true,
});

export type TechinicalSkill = z.infer<typeof TechinicalSkillZod>;

export const technicalSkillRouter = createTRPCRouter({
  getAll: protectedProcedure.query(async ({ ctx }) => {
    const result = await getDocs(ctx.db.technicalSkillsCollection);
    return {
      entries: result.docs.map((doc) => {
        return doc.data() as TechinicalSkill;
      }),
    };
  }),

  getById: protectedProcedure
    .input(z.object({ id: z.string() }))
    .query(async ({ input, ctx }) => {
      const docRef = doc(
        ctx.db.firestore,
        collectionNameTechinicalSkills,
        input.id,
      );
      const docRes = await getDoc(docRef);
      const data = docRes.data();
      if (!data) {
        throw new Error("Document not found");
      }
      return data as TechinicalSkill;
    }),

  create: protectedProcedure
    .input(TechinicalSkillMutateSchema)
    .mutation(async ({ ctx, input }) => {
      const newDoc = await addDoc(ctx.db.jobExperienceCollection, input);
      await setDoc(
        doc(ctx.db.firestore, `${collectionNameTechinicalSkills}/${newDoc.id}`),
        {
          id: newDoc.id,
          input,
        },
        {
          merge: true,
        },
      );
      return { ok: true };
    }),
  update: protectedProcedure
    .input(TechinicalSkillZod)
    .mutation(async ({ ctx, input }) => {
      await setDoc(
        doc(ctx.db.firestore, `${collectionNameTechinicalSkills}/${input.id}`),
        input,
        {
          merge: true,
        },
      );
      return { ok: true };
    }),
  delete: protectedProcedure
    .input(z.object({ id: z.string() }))
    .mutation(async ({ ctx, input }) => {
      await deleteDoc(
        doc(ctx.db.firestore, collectionNameTechinicalSkills, input.id),
      );
      return { ok: true };
    }),
});
