import Link from "next/link";

export default function AdminLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <div className="flex h-screen flex-col overflow-hidden">
      <header className="flex items-center justify-between border-b px-6 py-4">
        <h1 className="hidden text-xl font-semibold md:block">CV tracker</h1>
        <div className="flex flex-row lg:hidden">
          <Navbar />
        </div>
      </header>
      <div className="flex flex-1 overflow-hidden">
        <aside className="hidden w-64 overflow-y-auto border-r bg-gray-100 p-6 lg:block">
          <Navbar />
        </aside>
        <main className="flex-1 overflow-y-auto p-6">{children}</main>
      </div>
    </div>
  );
}

function Navbar() {
  return (
    <nav className="flex flex-row gap-1 lg:flex-col  lg:gap-2 ">
      <Link
        className="block rounded  p-2 hover:bg-gray-200"
        href="/admin/job-experience"
      >
        Job Experience
      </Link>
      <Link
        className="block rounded p-2 hover:bg-gray-200"
        href="/admin/technical-skills"
      >
        Technical Skills
      </Link>
      <Link
        className="block rounded  p-2 hover:bg-gray-200"
        href="/admin/education"
      >
        Education
      </Link>
    </nav>
  );
}
