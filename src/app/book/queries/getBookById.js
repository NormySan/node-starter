import { Book } from '../Book';
import { db } from '../../../database';

/**
 * Get a single book by ID.
 *
 * @param {number} id The ID of the book to get.
 * @returns {Book|null} A single book if found and null if no book could be found.
 */
export function getBookById(id) {
  const stmt = db.prepare('SELECT * FROM books WHERE id = :id');
  const result = stmt.get({ id });

  if (!result) {
    return null;
  }

  return new Book(result);
}
