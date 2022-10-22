import { serialize } from 'cookie';
import { NextApiResponse } from 'next';

export type CookieOptions = {
  maxAge: number;
  expires: Date;
};
const cookie = (res: NextApiResponse, name: string, value: string, options: CookieOptions = { maxAge: 0, expires: new Date() }) => {
  const stringValue = typeof value === 'object' ? 'j:' + JSON.stringify(value) : String(value);

  if ('maxAge' in options) {
    options.expires = new Date(Date.now() + options.maxAge);
    options.maxAge /= 1000;
  }

  res.setHeader('Set-Cookie', serialize(name, String(stringValue), options));
};

export default cookie;
