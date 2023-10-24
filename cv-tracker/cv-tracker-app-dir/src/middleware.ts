import { NextResponse } from "next/server";
import type { NextRequest } from "next/server";

export function middleware(request: NextRequest) {
  const password = request.cookies.get("password");
  const authPass = process.env.PASSWORD;
  if (authPass === "") {
    return NextResponse.redirect(new URL("/", request.url));
  }

  if (password && authPass && password.value === authPass) {
    return;
  }
  return NextResponse.redirect(new URL("/", request.url));
}

export const config = {
  matcher: "/admin/:path*",
};
