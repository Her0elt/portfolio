import { setCookie } from 'cookies-next';
import { NextApiRequest, NextApiResponse } from 'next';

export default function handler(req: NextApiRequest, res: NextApiResponse) {
  // Get data submitted in request's body.
  // { req, res, maxAge: 60 * 6 * 24 }
  const body = req.body;

  // Optional logging to see the responses
  // in the command line where next.js app is running.

  // Guard clause checks for first and last name,
  // and returns early if they are not found

  // Found the name.
  // Sends a HTTP success code

  if (process.env.NEXT_PUBLIC_PASSWORD == body.password) {
    const hashedPassword = body.password;
    setCookie('password', hashedPassword, { req, res, maxAge: 60 * 60 });
    return res.status(200).json({ data: 'All good' });
  }
  return res.status(400).json({ data: 'Wrong password' });
}
