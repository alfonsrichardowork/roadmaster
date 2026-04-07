import { NextResponse } from 'next/server';
import type { NextRequest } from 'next/server';
import createMiddleware from "next-intl/middleware";
import { routing } from './i18n/routing';

const superadminOnlyRoutes = ['/createuser', '/customapi', '/settings', '/usersettings']

function isAdminRoute(url: string): boolean {
  return url.startsWith('/admin');
}

function isSuperAdminOnlyRoute(url: string): boolean {
  return superadminOnlyRoutes.some(route => url.endsWith(route));
}

const intlMiddleware = createMiddleware({
  ...routing,
  localeDetection: false,
});

export function proxy(req: NextRequest) {
  const url = req.nextUrl.clone()

  if(!isAdminRoute(url.pathname)){
    if(url.pathname.startsWith('/_next') || url.pathname.startsWith('/api')) {
      return NextResponse.next();
    }

    return intlMiddleware(req);
  }

  const session = req.cookies.get("loginSession"); // ✅ Edge-compatible
  if(url.pathname === '/admin/sign-in' || url.pathname === '/admin/api/user/login'){
    if(!session){
      return NextResponse.next()
    }
    else{
      return NextResponse.redirect(new URL('/admin/', req.url));
    }
  }

  if(!session){
    return NextResponse.redirect(new URL('/admin/sign-in', req.url));
  }

  if(isSuperAdminOnlyRoute(url.pathname) ){
    if(session){
      return NextResponse.next();
    }
    else{
      return NextResponse.redirect(new URL('/admin/', req.url));
    }
  }
  
  return NextResponse.next();
}



export const config = {
  matcher: [
    '/((?!.*\\..*|_next).*)',
    '/',
    '/(api|trpc)(.*)'
  ],
}