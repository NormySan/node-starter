import { Author } from '../Author';
import { db } from '../../../database';

/**
 * Get a list of all authors.
 *
 * @returns {Author[]} An array of authors.
 */
export function getAllAuthors() {
  const stmt = db.prepare('SELECT * FROM authors');
  const rows = stmt.all();

  return rows.map(row => new Author(row));
}
