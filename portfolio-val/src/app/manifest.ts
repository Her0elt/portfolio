import type { MetadataRoute } from "next";

export default function manifest(): MetadataRoute.Manifest {
  return {
    name: "Portfolio Hermann Elton",
    short_name: "Portfolio Hermann Elton",
    description: "Portfolio page for Hermann Owren Elton",
    start_url: "/",
    display: "standalone",
    icons: [],
  };
}
