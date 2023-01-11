import type { LoaderFunction } from "@remix-run/node";
import { json } from "@remix-run/node";
import { Link, useLoaderData } from "@remix-run/react";
import Header, { links as headerLinks} from '../components/Header'
import RepositoryList, { links as repositoriesLinks} from '../components/RepositoryList'
import About, { links as aboutLinks} from '~/components/About';
import type {  Repository} from "~/generated/types";


import type { LoaderArgs } from '@remix-run/node';
import { trpcLoader } from '~/server/routers/_app.server';
import { trpc } from '~/utils/trpc';


export const links = () => [...aboutLinks(), ...headerLinks(), ...repositoriesLinks()];

const loader = async (args: LoaderArgs) => {
  const trpc = trpcLoader(args);


  return json({
    pinns: await trpc.pinns.all(),
  });
};


export default function Main() {
  const loaderData = useLoaderData<typeof loader>();
    const { data, error, status } = trpc.proxy.pinns.all.useQuery()
    const pinns = data?.pinns?.data.viewer.pinnedItems.nodes



  return (
  <main className="ui">
    <div className='repo_container'>
    <Header headerText='Hermann Elton' subHeaderText='Computer science student at NTNU Trondheim'/>

    <RepositoryList repositories={pinns as Array<Repository> }/>
        </div>
    <div className="about_container">
        <About/>

    </div>
    <div className="filler">
    </div>
  </main>
  );
}
