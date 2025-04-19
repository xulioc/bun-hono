import { betterAuth } from 'better-auth';
import { openAPI } from 'better-auth/plugins';
import { drizzleAdapter } from 'better-auth/adapters/drizzle';
import { db } from './db.js';
import { account, user } from './schema.js';

export const auth = betterAuth({
  database: drizzleAdapter(db, {
    provider: 'pg',
    schema: {
      user: user,
      account: account,
    }
  }),
  emailAndPassword: {
    enabled: true
  },
  plugins: [openAPI()]
});
