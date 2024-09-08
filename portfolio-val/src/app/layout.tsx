import { ValProvider } from "@valbuild/next";
import type { Metadata } from "next";
import localFont from "next/font/local";
import "./globals.css";
import { Navbar } from "@/components/navbar";
import { config } from "../../val.config";

const blankFont = localFont({
  src: "./fonts/BlankVF/BlankVF.ttf",
  variable: "--font-blank",
});

export const metadata: Metadata = {
  title: "Hermann Elton portfolio",
  description: "Portfolio page for Hermann Owren Elton",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <head>
        <meta charSet="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link
          rel="apple-touch-icon"
          href="/apple-icon?<generated>"
          type="image/<generated>"
          sizes="<generated>"
        />
        <link
          rel="icon"
          href="/icon?<generated>"
          type="image/<generated>"
          sizes="<generated>"
        />
        <link rel="icon" href="/favicon.ico" sizes="any" />
      </head>
      <body className={`${blankFont.variable} dark`}>
        <Navbar />

        <ValProvider config={config}>{children}</ValProvider>
      </body>
    </html>
  );
}
