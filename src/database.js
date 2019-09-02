import Database from 'better-sqlite3';
import path from 'path';

const databaseFile = path.resolve(__dirname, '../data/database.sqlite');

export const db = new Database(databaseFile, {
  verbose: console.log,
});
