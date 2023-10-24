import bcrypt from 'bcrypt';

export function hashPassword(password: string) {
  return bcrypt.hash(password, 10).then((result: string) => result);
}
export function comparePassword(password: string, hasedPassowrd: string) {
  return bcrypt.compare(password, hasedPassowrd).then((result: boolean) => result);
}
