import { Author } from '../../app/author/Author';
import { Book } from '../../app/book/Book';

import { getBooksByAuthor } from '../../app/book/queries/getBooksByAuthor';

/**
 * Resolver for the author type.
 */
export const AuthorResolver = {
  /**
   * Resolves the id field on a author.
   *
   * @param {Author} author The author.
   *
   * @returns {string} The author ID.
   */
  id(author) {
    return String(author.id);
  },

  /**
   * Resolves the id field on a author.
   *
   * @param {Author} author The author.
   *
   * @returns {string} The author ID.
   */
  name(author) {
    return author.name;
  },

  /**
   * Resolves the biography field on a author.
   *
   * @param {Author} author The author.
   *
   * @returns {string} The author ID.
   */
  biography(author) {
    if (!author.biography) {
      return '';
    }

    return author.biography;
  },

  /**
   * Resolves the books field on a author.
   *
   * @param {Author} author The author.
   *
   * @returns {Book[]} An array of books.
   */
  books(author) {
    return getBooksByAuthor(author);
  },
};
