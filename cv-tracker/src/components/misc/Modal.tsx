import { PropsWithChildren, ReactNode } from 'react';

export type ModalProps = {
  open: boolean;
  onClose: () => void;
  actionBtn: ReactNode;
};

const Modal = ({ open, onClose, children, actionBtn }: PropsWithChildren<ModalProps>) => {
  if (!open) {
    return <></>;
  }

  return (
    <div className=' fixed inset-0 z-50 flex items-center justify-center overflow-y-auto overflow-x-hidden bg-inherit outline-none focus:outline-none'>
      <div className='relative my-6 mx-auto w-auto max-w-3xl'>
        <div className='relative flex w-full flex-col rounded-lg border-0  bg-secondary p-8 shadow-lg outline-none focus:outline-none'>
          {children}
          <div className='grid grid-cols-1 place-content-center justify-items-center gap-4 bg-secondary xl:grid-cols-2 xl:grid-cols-2'>
            {actionBtn}
            <button
              className='inline-block w-full rounded bg-red-600 px-6 py-2.5 text-xs font-medium uppercase leading-tight text-white shadow-md transition duration-150 ease-in-out hover:bg-red-700 hover:shadow-lg focus:bg-red-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-red-800 active:shadow-lg xl:w-3/5'
              onClick={onClose}>
              close
            </button>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Modal;
