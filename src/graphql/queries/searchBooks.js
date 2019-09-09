import { Book } from '../../app/book/Book';
import { searchBooks as searchBooksQuery } from '../../app/book/queries/searchBooks';

/**
 * Resolver for the book query field.
 *
 * @param {undefined} root The query root, does not exist in this case.
 * @param {object} args The query arguments.
 * @param {string} args.title The title to search for.
 * @param {string} args.isbn The isbn to search for.
 *
 * @returns {Book[]} An array of books matching the search filters.
 */
export function searchBooks(root, args) {
  const params = {};

  if (args.isbn) {
    params.isbn = args.isbn;
  }

  if (args.title) {
    params.title = args.title;
  }

  const books = searchBooksQuery(params);

  return books;
}
