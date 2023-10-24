import { z } from "zod";

import { createTRPCRouter, protectedProcedure } from "~/server/api/trpc";
import { doc, getDocs, getDoc, deleteDoc } from "@firebase/firestore";
import { format } from "date-fns";
import { collectionNameEducation } from "~/server/db";

export const EducationZod = z.object({
  id: z.string(),
  school: z.string(),
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

export const EducationMutateSchema = EducationZod.omit({ id: true });

export type Education = z.infer<typeof EducationZod>;

export const educationRouter = createTRPCRouter({
  getAll: protectedProcedure.query(async ({ ctx }) => {
    const result = await getDocs(ctx.db.educationCollection);
    return {
      entries: result.docs.map((doc) => {
        return doc.data() as Education;
      }),
    };
  }),

  getById: protectedProcedure
    .input(z.object({ id: z.string() }))
    .query(async ({ input, ctx }) => {
      const docRef = doc(ctx.db.firestore, collectionNameEducation, input.id);
      const docRes = await getDoc(docRef);
      const data = docRes.data();
      if (!data) {
        throw new Error("Document not found");
      }
      return data as Education;
    }),
  delete: protectedProcedure
    .input(z.object({ id: z.string() }))
    .mutation(async ({ ctx, input }) => {
      await deleteDoc(doc(ctx.db.firestore, collectionNameEducation, input.id));
      return { ok: true };
    }),
});
