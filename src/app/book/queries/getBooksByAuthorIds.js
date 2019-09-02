import { Book } from '../Book';
import { db } from '../../../database';

/**
 * Get a list of books for the specified author IDs.
 *
 * @param {number[]} ids An array of author IDs.
 * @returns {Book[]} An array of books.
 */
export function getBooksByAuthorIds(ids) {
  const params = '?,'.repeat(ids.length).slice(0, -1);

  const stmt = db.prepare(`
    SELECT books.* FROM books
    LEFT JOIN authors_books
    ON books.id = authors_books.book_id
    WHERE authors_books.author_id IN (${params})
  `);

  const rows = stmt.all(ids);

  return rows.map(row => new Book(row));
}
