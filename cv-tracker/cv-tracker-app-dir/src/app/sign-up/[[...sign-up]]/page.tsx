import { SignUp } from "@clerk/nextjs";
import { redirect } from "next/navigation";

export default function Page() {
  redirect("/sign-in");
}
