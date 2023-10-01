import { users } from "$lib/server/db";
import type { PageServerLoad } from "./$types";

export const load: PageServerLoad = async ({ locals }) => {
  return {
    users: locals.db.select().from(users).all(),
  };
};
