import { createTRPCRemix } from 'trpc-remix';
import type { AppRouter } from '~/server/routers/_app.server';
import superjson from 'superjson';
import { httpBatchLink, loggerLink } from '@trpc/client';


const getBaseUrl = () => {
  if (typeof window !== 'undefined') return ''; // browser should use relative url
  if (process.env.VERCEL_URL) return `https://${process.env.VERCEL_URL}`; // SSR should use vercel url
  return `http://localhost:${process.env.PORT ?? 3000}`; // dev SSR should use localhost
};


export const trpc = createTRPCRemix<AppRouter>({
  config() {
    return {
      links: [
        loggerLink({
          enabled: (opts) => process.env.NODE_ENV === 'development' || (opts.direction === 'down' && opts.result instanceof Error),
        }),
        httpBatchLink({
          url: `${getBaseUrl()}/api/trpc`,
        }),
      ],
    };
  },
  ssr: false,
});
