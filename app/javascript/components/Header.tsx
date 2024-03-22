import React from 'react';
import { createRoot } from 'react-dom/client';

function AppName() {
  return (
    <div className="my-4 flex items-center justify-center text-2xl font-bold">
      <h1 className="">Packages</h1>
    </div>
  );
}

document.addEventListener('turbo:load', () => {
  if (document.getElementById('react-header')) {
    const root = createRoot(document.getElementById('react-header')!);
    root.render(<AppName />);
  }
});
