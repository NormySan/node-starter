import { Author } from '../Author';
import { Book } from '../../book/Book';
import { db } from '../../../database';

/**
 * Get a list of authors for a book.
 *
 * @param {Book} book The book to get authors for.
 *
 * @returns {Author[]} An array of authors.
 */
export function getAuthorsOfBook(book) {
  const stmt = db.prepare(`
    SELECT * FROM authors
    LEFT JOIN authors_books
    ON authors.id = authors_books.author_id
    WHERE authors_books.book_id = :id
  `);

  const rows = stmt.all({
    id: book.id,
  });

  return rows.map(row => new Author(row));
}
