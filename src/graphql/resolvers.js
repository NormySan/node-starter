import { author } from './queries/author';
import { authors } from './queries/authors';
import { book } from './queries/book';
import { books } from './queries/books';

import { AuthorResolver } from './resolvers/AuthorResolver';
import { BookResolvers } from './resolvers/BookResolver';
import { searchBooks } from './queries/searchBooks';

export const resolvers = {
  Author: AuthorResolver,
  Book: BookResolvers,
  Query: {
    author,
    authors,
    book,
    books,
    searchBooks,
  },
};
