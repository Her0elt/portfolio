import { remixHTTPRequestHandler } from 'trpc-remix/adapter';
import { createContext } from '~/server/context.server';
import { appRouter } from '~/server/routers/_app.server';

export  const { loader, action } = remixHTTPRequestHandler({
  createContext,
  router: appRouter,
});
