/**
 * v0 by Vercel.
 * @see https://v0.dev/t/ftRBNmQVEpm
 * Documentation: https://v0.dev/docs#integrating-generated-code-into-your-nextjs-app
 */
import { Link } from "@remix-run/react";
import { $path } from "remix-routes";

import { Button } from "@/components/ui/button";
import {
  NavigationMenu,
  NavigationMenuLink,
  NavigationMenuList,
} from "@/components/ui/navigation-menu";
import {
  Sheet,
  SheetClose,
  SheetContent,
  SheetTrigger,
} from "@/components/ui/sheet";
import { Text } from "./ui/text";

export function Navbar() {
  return (
    <nav className="sticky top-0 z-10 bg-background inset-x-0">
      <div className="w-full mx-auto max-w-7xl">
        <div className="flex items-center lg:justify-center justify-between h-14 px-4 md:px-6">
          <Link to={$path("/")} className="mr-6 text-2xl font-semibold">
            --/--
          </Link>
          <NavigationMenu className="hidden lg:flex">
            <NavigationMenuList>
              <NavigationMenuLink asChild>
                <Link
                  to={$path("/work-experience")}
                  className="group inline-flex h-9 w-max items-center justify-center px-4 py-2 text-sm font-medium transition-colors hover:underline focus:underline disableCd:pointer-events-none disabled:opacity-50 data-[active]:underline dark:hover:underline  dark:focus:underline dark:data-[active]:underline dark:data-[state=open]:underline dark:bg-background bg-background"
                >
                  Work experiences
                </Link>
              </NavigationMenuLink>
              <NavigationMenuLink asChild>
                <Link
                  to={$path("/projects")}
                  className="group inline-flex h-9 w-max items-center justify-center px-4 py-2 text-sm font-medium transition-colors hover:underline focus:underline disableCd:pointer-events-none disabled:opacity-50 data-[active]:underline dark:hover:underline  dark:focus:underline dark:data-[active]:underline dark:data-[state=open]:underline dark:bg-background bg-background"
                >
                  Projects
                </Link>
              </NavigationMenuLink>
              <NavigationMenuLink asChild>
                <Link
                  to={$path("/skills")}
                  className="group inline-flex h-9 w-max items-center justify-center px-4 py-2 text-sm font-medium transition-colors hover:underline focus:underline disableCd:pointer-events-none disabled:opacity-50 data-[active]:underline dark:hover:underline  dark:focus:underline dark:data-[active]:underline dark:data-[state=open]:underline dark:bg-background bg-background"
                >
                  Skills
                </Link>
              </NavigationMenuLink>
              {/*
              <NavigationMenuLink asChild>
                <Link
                  to={$path("/education")}
                  className="group inline-flex h-9 w-max items-center justify-center px-4 py-2 text-sm font-medium transition-colors hover:underline focus:underline disableCd:pointer-events-none disabled:opacity-50 data-[active]:underline dark:hover:underline  dark:focus:underline dark:data-[active]:underline dark:data-[state=open]:underline dark:bg-background bg-background"
                >
                  Education
                </Link>
              </NavigationMenuLink>
            */}
            </NavigationMenuList>
          </NavigationMenu>
          <Sheet>
            <SheetContent side="right">
              <div className="flex flex-col w-48 p-2 text-sm mt-14 gap-4">
                <SheetClose asChild>
                  <Link to={$path("/")}>
                    <Text size="large">Info</Text>
                  </Link>
                </SheetClose>
                <SheetClose asChild>
                  <Link to={$path("/work-experience")}>
                    <Text size="large">Work experience</Text>
                  </Link>
                </SheetClose>
                <SheetClose asChild>
                  <Link to={$path("/projects")}>
                    <Text size="large">Projects</Text>
                  </Link>
                </SheetClose>
                <SheetClose asChild>
                  <Link to={$path("/skills")}>
                    <Text size="large">Skills</Text>
                  </Link>
                </SheetClose>
                {/*
                <SheetClose asChild>
                <Link to={$path("/education")}>
                  <Text size="large">Education</Text>
                </Link>
                </SheetClose>
                */}
              </div>
            </SheetContent>
            <SheetTrigger asChild>
              <Button variant="outline" className="ml-2 lg:hidden">
                <svg
                  className="w-4 h-4"
                  xmlns="http://www.w3.org/2000/svg"
                  width="24"
                  height="24"
                  viewBox="0 0 24 24"
                  fill="none"
                  stroke="currentColor"
                  strokeWidth="2"
                  strokeLinecap="round"
                  strokeLinejoin="round"
                >
                  <line x1="4" x2="20" y1="12" y2="12" />
                  <line x1="4" x2="20" y1="6" y2="6" />
                  <line x1="4" x2="20" y1="18" y2="18" />
                </svg>
                <span className="sr-only">Toggle navigation menu</span>
              </Button>
            </SheetTrigger>
          </Sheet>
        </div>
      </div>
    </nav>
  );
}
