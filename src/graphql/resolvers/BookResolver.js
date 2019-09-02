import { Author } from '../../app/author/Author';
import { Book } from '../../app/book/Book';

import { getAuthorsOfBook } from '../../app/author/queries/getAuthorsOfBook';

/**
 * Resolver for the book type.
 */
export const BookResolvers = {
  /**
   * Resolves the id field for a book.
   *
   * @param {Book} book The book.
   *
   * @returns {string} The book ID.
   */
  id(book) {
    return String(book.id);
  },

  /**
   * Resolves the title field for a book.
   *
   * @param {Book} book The book.
   *
   * @returns {string} The book title.
   */
  title(book) {
    return book.title;
  },

  /**
   * Resolves the isbn field for a book.
   *
   * @param {Book} book The book.
   *
   * @returns {string} The book isbn.
   */
  isbn(book) {
    return book.isbn;
  },

  /**
   * Resolves the authors field for a book.
   *
   * @param {Book} book The book.
   *
   * @returns {Author[]} Authors of the book.
   */
  authors(book) {
    return getAuthorsOfBook(book);
  },
};
