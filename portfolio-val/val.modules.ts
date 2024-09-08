import { modules } from "@valbuild/next";
import { config } from "./val.config";

export default modules(config, [
  // Add your modules here
  { def: () => import("./src/content/info.val") },
  { def: () => import("./src/content/skills.val") },
  { def: () => import("./src/content/projects.val") },
  { def: () => import("./src/content/work-experience.val") },
]);
