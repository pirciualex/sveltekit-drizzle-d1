declare global {
  namespace App {
    // interface Error {}
    interface Locals {
      db: import("drizzle-orm/d1").DrizzleD1Database;
    }
    // interface PageData {}
    interface Platform {
      env: {
        DB: D1Database;
      };
    }
  }
}

export {};
