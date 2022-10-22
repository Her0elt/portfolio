import type { NextPage } from "next";
import { PropsWithChildren, useState} from 'react';
import { trpc } from "../utils/trpc";
import {JobExperience} from "../utils/types";



const Home: NextPage = () => {
  const experiences = trpc.example.jobExperience.useQuery();
  const util = trpc.useContext()
  const [open, setOpen] = useState(false);
  const [experience, setExperience ] = useState<JobExperience | null >(null);
    const mutateJobExperience = trpc.example.mutateJobExperience.useMutation(
    {
        onSuccess() {
            util.example.jobExperience.invalidate();
        }
    }
    );
  const handleSubmit = (event: any) => {
      event.preventDefault()

    const data : JobExperience = {
        id: experience?.id,
        title: event.target.elements["title"].value,
        company: event.target.elements["company"].value,
        from: event.target.elements["from"].value,
        to: event.target.elements["to"].value,
        description: event.target.elements["description"].value,
    }

      mutateJobExperience.mutate(data);
      setOpen(false)

  }

  return (
    <>
    <div className="m-4 xl:m-28 grid gap-8 xl:grid-cols-2 grid-cols-1">
    {experiences.data?.entries.map(exp => (
        <ExperienceCard key={exp.id} onClick={() =>{
            setOpen(true)
            setExperience(exp)

            }}
            experience={exp}/>

    ))}
    <Modal open={open} onClose={() => setOpen(false)} >
        <form onSubmit={handleSubmit}>
        <div className="p-4 grid gap-4 mb-6 grid-cols-1">
      <div className="w-full">
         <label htmlFor="company" className="mb-2 italic">Company</label>
      <input
        className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:border-gray-600 dark:focus:ring-blue-500 dark:focus:border-blue-500"
        id="company"
        name="company"
        type="text"
        defaultValue={experience?.company}

        required
      />
      </div>
      <div className="w-full">
         <label htmlFor="title" className="mb-2 italic">Title</label>
      <input
        className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:border-gray-600 dark:focus:ring-blue-500 dark:focus:border-blue-500"
        id="title"
        name="title"
        type="text"
        defaultValue={experience?.title}

        required
      />
      </div>
      <div className="grid xl:grid-cols-2 lg:grid-cols-1 w-full gap-2" >
      <div>
         <label htmlFor="from" className="mb-2 italic">From</label>
      <input
        className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:border-gray-600 dark:focus:ring-blue-500 dark:focus:border-blue-500"
        id="from"
        name="from"
        type="text"
        defaultValue={experience?.from}
        required
      />
      </div>
      <div>
         <label htmlFor="company" className="mb-2 italic">To</label>
      <input
        className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:border-gray-600 dark:focus:ring-blue-500 dark:focus:border-blue-500"
        id="to"
        name="to"
        type="text"
        defaultValue={experience?.to}
        required
      />
      </div>
      </div>
      <div className="mb-3 xl:w-96">
    <label htmlFor="description" className="mb-2 italic">Description</label>
    <textarea
      className="resize-none bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:border-gray-600 dark:focus:ring-blue-500 dark:focus:border-blue-500"
      id="description"
      name="description"
        defaultValue={experience?.description}
      required
      rows={8}/>
  </div>
            <button type="submit">Submit</button>
            </div>
        </form>
    </Modal>

    </div>
    </>
  );
};

export default Home;


export type ExperienceCardProps = {
    experience : JobExperience
    onClick: () => void;
}

export type ModalProps = {
    open: boolean;
    onClose: () => void;
}


const Modal = ({open, onClose, children}: PropsWithChildren<ModalProps>) => {
    if (!open){
        return <></>
    }

    return (
        <div className="justify-center items-center flex overflow-x-hidden overflow-y-auto fixed inset-0 z-50 outline-none focus:outline-none">
         <div className="relative w-auto my-6 mx-auto max-w-3xl">
        <div className="p-8 border-0 rounded-lg shadow-lg relative flex flex-col w-full bg-white outline-none focus:outline-none">
            {children}
            <button onClick={onClose}>close</button>
        </div>
        </div>
        </div>
    )
}

const ExperienceCard = ({ experience, onClick } : ExperienceCardProps) => {
  return (
    <div onClick={onClick} className="xl:p-16 p-8 shadow-2xl rounded-lg grid gap-6  grid-cols-1 place-items-start">
        <div className="font-medium leading-tight xl:text-4xl text-xl mt-0 mb-2">{experience.company}</div>
        <div className="font-medium xl:text-2xl text-md mt-0 mb-0">{experience.title}</div>
        <div className="font-medium xl:text-2xl text-md mt-0 mb-0">{experience.from} - {experience.to}</div>
        <p>{experience.description}</p>
    </div>
  );
};
