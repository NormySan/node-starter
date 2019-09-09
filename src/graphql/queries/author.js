import { Author } from '../../app/author/Author';
import { getAuthorById } from '../../app/author/queries/getAuthorById';

/**
 * Resolver for the author query field.
 *
 * @param {undefined} root The query root, does not exist in this case.
 * @param {object} args The query arguments.
 * @param {string} args.id The ID of the author to get.
 *
 * @returns {Author|null} The found author or null if one was not found.
 */
export function author(root, args) {
  const author = getAuthorById(parseInt(args.id, 10));

  if (!author) {
    return null;
  }

  return author;
}
