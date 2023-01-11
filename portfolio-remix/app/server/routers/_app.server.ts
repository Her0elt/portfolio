import { router } from '~/server/trpc.server';
import {pinnsRouter} from './pinns.server';
import { createTRPCLoader } from 'trpc-remix';


export const appRouter = router({
    pinns: pinnsRouter,
    inns: pinnsRouter,
});

export type AppRouter = typeof appRouter;

export const trpcLoader = createTRPCLoader(appRouter);

