import { Book } from '../Book';
import { db } from '../../../database';
import { Author } from '../../author/Author';

/**
 * Get a list of all books by an author.
 *
 * @param {Author} author The author to get books for.
 * @returns {Book[]} An array of books by the author.
 */
export function getBooksByAuthor(author) {
  const stmt = db.prepare(`
    SELECT books.* FROM books
    LEFT JOIN authors_books
    ON books.id = authors_books.book_id
    WHERE authors_books.author_id = :id;
  `);

  const rows = stmt.all({ id: author.id });

  return rows.map(row => new Book(row));
}
