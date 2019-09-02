import { Book } from '../Book';
import { db } from '../../../database';

// interface SearchBooksParams {
//   title: string | null;
//   isbn: string | null;
// }

/**
 * Search books based on the specified parameters.
 *
 * @param {object} params Search parameters
 * @param {string} [params.title] The title to search for.
 * @param {string} [params.isbn] The ISBN to search for.
 *
 * @returns {Book[]} An array of books matching the search parameters.
 */
export function searchBooks(params) {
  let query = 'SELECT books.* FROM books';

  if (params.title) {
    query += ' WHERE books.title MATCH :title';
  }

  if (params.isbn) {
    query += ' WHERE books.isbn = :isbn';
  }

  query += ' ORDER BY rank';

  const stmt = db.prepare(query);

  const rows = stmt.all({
    isbn: params.isbn,
    title: params.title,
  });

  return rows.map(row => new Book(row));
}
