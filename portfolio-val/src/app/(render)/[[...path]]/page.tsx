import { fetchVal } from "@/val/val.rsc";
import { Text } from "@/components/ui/text";
import pagesVal from "@/content/pages.val";
import { getPage } from "@/lib/utils";
import { notFound } from "next/navigation";

import PageRender from "@/components/page-components/page-render";

export default async function Page({
  params,
}: {
  params: Promise<{ path: string[] }>;
}) {
  const paramsData = await params;
  const path = paramsData.path;
  const actualFullPathString = path ? `/${path.join("/")}` : "/";
  const pages = await fetchVal(pagesVal);
  const page = getPage(pages, actualFullPathString);
  if (!page) return notFound();

  return (
    <main className="flex items-center mt-28 flex-col gap-20">
      {page.title && (
        <Text variant="h1" size="title">
          {page.title}
        </Text>
      )}
      <PageRender data={page.pageElements} />
    </main>
  );
}
