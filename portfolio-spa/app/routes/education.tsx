import type { MetaFunction } from "@remix-run/node";

export const meta: MetaFunction = () => {
  return [
    { title: "Hermann Portfolio" },
    {
      name: "description",
      content: "Welcome to the portfolio of Hermann Owren Elton!",
    },
  ];
};

export default function Education() {
  return (
    <main>
      <h1>Hello</h1>
    </main>
  );
}
