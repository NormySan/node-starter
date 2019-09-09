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
  let query = 'SELECT books_search.* FROM books_search';

  if (params.title) {
    query += ' WHERE books_search.title MATCH :title';
  }

  if (!params.title && params.isbn) {
    query += ' WHERE books_search.isbn = :isbn';
  }

  if (params.title && params.isbn) {
    query += ' AND books_search.isbn = :isbn';
  }

  query += ' ORDER BY rank';

  const stmt = db.prepare(query);

  const rows = stmt.all({
    isbn: params.isbn,
    title: params.title,
  });

  return rows.map(row => new Book(row));
}
