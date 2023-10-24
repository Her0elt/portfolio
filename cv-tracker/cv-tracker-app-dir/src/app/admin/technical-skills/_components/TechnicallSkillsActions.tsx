"use server";
import { TechinicalSkillMutateSchema } from "~/server/api/routers/technical-skills";
import { revalidatePath } from "next/cache";
import { redirect } from "next/navigation";
import {
  collectionNameTechinicalSkills,
  firestore,
  technicalSkillsCollection,
} from "~/server/db";
import { doc, addDoc, setDoc } from "@firebase/firestore";

export async function newSkillAction(formData: FormData) {
  const json = Object.fromEntries(formData);
  const res = TechinicalSkillMutateSchema.safeParse(json);
  if (!res.success) {
    throw new Error(
      `Something is missing from form  ${JSON.stringify(res.error.errors)}`,
    );
  }
  const newDoc = await addDoc(technicalSkillsCollection, res.data);
  await setDoc(
    doc(firestore, `${collectionNameTechinicalSkills}/${newDoc.id}`),
    {
      id: newDoc.id,
      ...res.data,
    },
    {
      merge: true,
    },
  );
  revalidatePath("/admin/technical-skills");
  redirect("/admin/technical-skills");
}

export async function updateSkillAction(id: string, formData: FormData) {
  const json = Object.fromEntries(formData);
  const res = TechinicalSkillMutateSchema.safeParse(json);
  if (!res.success) {
    throw new Error(
      `Something is missing from form  ${JSON.stringify(res.error.errors)}`,
    );
  }
  await setDoc(
    doc(firestore, `${collectionNameTechinicalSkills}/${id}`),
    res.data,
    {
      merge: true,
    },
  );
  revalidatePath("/admin/technical-skills");
  redirect("/admin/technical-skills");
}
