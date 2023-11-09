import { SignIn } from "@clerk/nextjs";

export default function Page() {
  return (
    <div className="flex h-full w-full content-center justify-center pt-40">
      <SignIn
        appearance={{
          elements: {
            footerAction: { display: "none" },
          },
        }}
      />
    </div>
  );
}
