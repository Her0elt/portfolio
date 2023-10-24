import { cookies } from "next/headers";
import { redirect } from "next/navigation";
import { z } from "zod";
const PasswordSchema = z.object({
  password: z.string(),
});
export default function Home() {
  // eslint-disable-next-line @typescript-eslint/require-await
  async function action(formData: FormData) {
    "use server";
    const json = Object.fromEntries(formData);
    const res = PasswordSchema.safeParse(json);
    if (!res.success) {
      return;
    }
    if (process.env.PASSWORD != res.data.password) {
      return;
    }

    cookies().set("password", res.data.password);
    redirect("/admin");
  }
  return (
    <main className="mt-16 md:p-24">
      <div className="space-y-6 rounded-lg bg-white p-6 shadow-lg">
        <h1 className="text-center text-3xl font-bold">Enter password</h1>
        <form
          className="flex flex-col items-center gap-4 space-y-4 md:p-8"
          action={action}
        >
          <div className="flex flex-col gap-4">
            <label htmlFor="title">Password</label>
            <input
              className="p-2"
              name="password"
              type="password"
              placeholder="Enter password"
              required
            />
          </div>
          <button className="w-full" type="submit">
            Submit
          </button>
        </form>
      </div>
    </main>
  );
}
