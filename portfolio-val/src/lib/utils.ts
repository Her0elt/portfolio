import { type Pages } from "@/content/pages.val";
import { clsx, type ClassValue } from "clsx";
import { twMerge } from "tailwind-merge";

export function getPage(pages: Pages, path: string) {
  return pages.find((page) => page.path === path);
}

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs));
}
