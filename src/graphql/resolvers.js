import { author } from './queries/author';
import { authors } from './queries/authors';
import { book } from './queries/book';
import { books } from './queries/books';
import { searchBooks } from './queries/searchBooks';

import { AuthorResolver } from './resolvers/AuthorResolver';
import { BookResolvers } from './resolvers/BookResolver';

import { ISBNScalar } from './scalars/ISBNScalar';

export const resolvers = {
  Author: AuthorResolver,
  Book: BookResolvers,
  ISBN: ISBNScalar,
  Query: {
    author,
    authors,
    book,
    books,
    searchBooks,
  },
};
