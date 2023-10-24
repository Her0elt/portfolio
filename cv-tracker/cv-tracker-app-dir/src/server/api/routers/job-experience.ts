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
import { collectionNameJobExperience } from "~/server/db";
import { format } from "date-fns";
import { TRPCError } from "@trpc/server";

export const JobExperienceZod = z.object({
  id: z.string(),
  company: z.string(),
  description: z.string(),
  from: z.string().transform((str, _) => {
    return format(new Date(str), "MMMM yyyy");
  }),
  to: z
    .string()
    .nullish()
    .transform((str, _) => {
      if (!str) {
        return "Now";
      }
      return format(new Date(str), "MMMM yyyy");
    }),
  title: z.string(),
});

export const JobExperienceMutateSchema = JobExperienceZod.omit({ id: true });

export type JobExperience = z.infer<typeof JobExperienceZod>;

export const jobExperienceRouter = createTRPCRouter({
  getAll: protectedProcedure.query(async ({ ctx }) => {
    const result = await getDocs(ctx.db.jobExperienceCollection);
    return {
      entries: result.docs.map((doc) => {
        return doc.data() as JobExperience;
      }),
    };
  }),

  getById: protectedProcedure
    .input(z.object({ id: z.string() }))
    .query(async ({ input, ctx }) => {
      const docRef = doc(
        ctx.db.firestore,
        collectionNameJobExperience,
        input.id,
      );
      const docRes = await getDoc(docRef);
      const data = docRes.data();
      if (!data) {
        throw new TRPCError({
          message: "Document not found",
          code: "NOT_FOUND",
        });
      }
      return data as JobExperience;
    }),

  create: protectedProcedure
    .input(JobExperienceMutateSchema)
    .mutation(async ({ ctx, input }) => {
      const newDoc = await addDoc(ctx.db.jobExperienceCollection, input);
      await setDoc(
        doc(ctx.db.firestore, `${collectionNameJobExperience}/${newDoc.id}`),
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
    .input(JobExperienceZod)
    .mutation(async ({ ctx, input }) => {
      await setDoc(
        doc(ctx.db.firestore, `${collectionNameJobExperience}/${input.id}`),
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
        doc(ctx.db.firestore, collectionNameJobExperience, input.id),
      );
      return { ok: true };
    }),
});
