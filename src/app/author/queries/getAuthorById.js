import { Author } from '../Author';
import { db } from '../../../database';

/**
 * Get a single author by ID.
 *
 * @param {number} id The ID of the author.
 *
 * @returns {Author|null} The author if found otherwise null.
 */
export function getAuthorById(id) {
  const stmt = db.prepare('SELECT * FROM authors WHERE id = :id');

  const result = stmt.get({ id });

  if (!result) {
    return null;
  }

  return new Author(result);
}
