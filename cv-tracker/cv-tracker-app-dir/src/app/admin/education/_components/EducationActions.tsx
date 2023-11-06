"use server";
import { revalidatePath } from "next/cache";
import { redirect } from "next/navigation";
import {
  collectionNameEducation,
  educationCollection,
  firestore,
} from "~/server/db";
import { doc, addDoc, setDoc } from "@firebase/firestore";
import { EducationMutateSchema } from "~/server/api/routers/education";

export async function newEducationAction(formData: FormData) {
  const json = Object.fromEntries(formData);
  const res = EducationMutateSchema.safeParse(json);
  if (!res.success) {
    throw new Error(
      `Something is missing from form  ${JSON.stringify(res.error.errors)}`,
    );
  }
  const newDoc = await addDoc(educationCollection, res.data);
  await setDoc(
    doc(firestore, `${collectionNameEducation}/${newDoc.id}`),
    {
      id: newDoc.id,
      ...res.data,
    },
    {
      merge: true,
    },
  );
  revalidatePath("/admin/job-experience");
  redirect("/admin/job-experience");
}

export async function updateEducationAction(id: string, formData: FormData) {
  const json = Object.fromEntries(formData);
  const res = EducationMutateSchema.safeParse(json);
  if (!res.success) {
    throw new Error(
      `Something is missing from form  ${JSON.stringify(res.error.errors)}`,
    );
  }
  await setDoc(doc(firestore, `${collectionNameEducation}/${id}`), res.data, {
    merge: true,
  });
  revalidatePath("/admin/job-experience");
  redirect("/admin/job-experience");
}
