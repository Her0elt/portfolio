import type { NextRequest } from 'next/server';
import { NextResponse } from 'next/server';

export default async function middleware(request: NextRequest) {
  if (request.nextUrl.pathname.startsWith('/auth')) {
    const password = request.cookies.get('password');
    const authPass = process.env.PASSWORD;

    if (password && authPass && password === authPass) {
      return;
    }
    return NextResponse.rewrite(new URL('/', request.url));
    // This logic is only applied to /dashboard
  }
}
