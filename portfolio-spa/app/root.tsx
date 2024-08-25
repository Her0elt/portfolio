import {
  Links,
  Meta,
  Outlet,
  Scripts,
  ScrollRestoration,
} from "@remix-run/react";
import "./tailwind.css";

import { Client, Provider, cacheExchange, fetchExchange } from "urql";
import { Navbar } from "./components/navbar";
import { refocusExchange } from "@urql/exchange-refocus";

const client = new Client({
  url: import.meta.env.VITE_API_URL,
  exchanges: [refocusExchange(), cacheExchange, fetchExchange],

  fetchOptions: {
    headers: {
      "Content-Type": "application/json",
    },
  },
});

export function Layout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="en">
      <head>
        <meta charSet="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link
          rel="apple-touch-icon"
          sizes="180x180"
          href="/apple-touch-icon.png"
        />
        <link
          rel="icon"
          type="image/png"
          sizes="32x32"
          href="/favicon-32x32.png"
        />
        <link
          rel="icon"
          type="image/png"
          sizes="16x16"
          href="/favicon-16x16.png"
        />
        <link rel="manifest" href="/site.webmanifest" />
        <Meta />
        <Links />
      </head>
      <body className="dark">
        <Provider value={client}>{children}</Provider>
        <ScrollRestoration />
        <Scripts />
      </body>
    </html>
  );
}

export default function App() {
  return (
    <>
      <Navbar />
      <Outlet />
    </>
  );
}

export function HydrateFallback() {
  return <p>Loading...</p>;
}
