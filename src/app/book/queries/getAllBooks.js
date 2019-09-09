import { Book } from '../Book';
import { db } from '../../../database';

/**
 * Get a list of all books.
 *
 * @returns {Book[]} An array of books.
 */
export function getAllBooks() {
  const stmt = db.prepare('SELECT id,title,isbn FROM books');
  const rows = stmt.all();

  return rows.map(row => new Book(row));
}
