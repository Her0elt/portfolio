"use server";
import { collectionNameJobExperience } from "~/server/db";
import { doc, addDoc, setDoc } from "@firebase/firestore";
import { protectedProcedure } from "~/server/api/trpc";
import {
  JobExperienceMutateSchema,
  JobExperienceZod,
} from "~/server/api/routers/job-experience";
import { createAction } from "~/server/api/action";
import { api } from "~/trpc/server";

export const createJobExperienceAction = createAction(
  protectedProcedure
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
      await api.jobExperience.getAll.revalidate();
    }),
);

export const updateJobExperienceAction = createAction(
  protectedProcedure
    .input(JobExperienceZod)
    .mutation(async ({ ctx, input }) => {
      await setDoc(
        doc(ctx.db.firestore, `${collectionNameJobExperience}/${input.id}`),
        input,
        {
          merge: true,
        },
      );
      await api.jobExperience.getAll.revalidate();
      await api.jobExperience.getById.revalidate({ id: input.id });
    }),
);
