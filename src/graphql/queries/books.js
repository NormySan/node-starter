import { Book } from '../../app/book/Book';
import { getAllBooks } from '../../app/book/queries/getAllBooks';

/**
 * Resolver for the books query field.
 *
 * @returns {Book[]} An array of books.
 */
export function books() {
  return getAllBooks();
}
