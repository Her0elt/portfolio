import { initTRPC } from '@trpc/server';

import type { Context } from './context.server';

const t = initTRPC<Context>()();


export const router = t.router;

export const publicProcedure = t.procedure;
