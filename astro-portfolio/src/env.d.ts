/// <reference path="../.astro/types.d.ts" />
/// <reference types="@astrojs/image/client" />
interface ImportMetaEnv {
	readonly GRAPHQL_API: string;
}

interface ImportMeta {
	readonly env: ImportMetaEnv;
}
