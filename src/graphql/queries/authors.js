import { Author } from '../../app/author/Author';
import { getAllAuthors } from '../../app/author/queries/getAllAuthors';

/**
 * Resolver for the authors query field.
 *
 * @returns {Author[]} The
 */
export function authors() {
  return getAllAuthors();
}
