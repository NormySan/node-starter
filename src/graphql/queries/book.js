import { Book } from '../../app/book/Book';
import { getBookById } from '../../app/book/queries/getBookById';

/**
 * Resolver for the book query field.
 *
 * @param {undefined} root The query root, does not exist in this case.
 * @param {object} args The query arguments.
 * @param {string} args.id The ID of the book to get.
 *
 * @returns {Book|null} The found book or null.
 */
export function book(root, args) {
  const book = getBookById(parseInt(args.id, 10));

  if (!book) {
    return null;
  }

  return book;
}
