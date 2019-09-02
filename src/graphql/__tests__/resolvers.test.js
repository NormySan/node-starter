import { resolvers } from '..';

it('should return an array of books', () => {
  const books = resolvers.Query.books();
  expect(books).toHaveLength(2);
});

it('should return book with id', () => {
  const book = resolvers.Query.book(null, { id: '1' });
  expect(book).toHaveProperty('id', '1');
});

it('should return null whne book does not exist', () => {
  const book = resolvers.Query.book(null, { id: '10' });
  expect(book).toBeNull();
});
