import DataLoader from 'dataloader';
import { getBooksByAuthorIds } from '../../app/book/queries/getBooksByAuthorIds';

export const authorBooksLoader = new DataLoader(async ids => {
  const books = await getBooksByAuthorIds(ids);

  const booksByAuthor = books.reduce((hash, book) => {
    if (!Object.prototype.hasOwnProperty.call(hash, book.id)) {
      hash[book.id] = [];
    }

    hash[book.id].push(book);

    return hash;
  }, {});

  return ids.map(id => (booksByAuthor[id] ? booksByAuthor[id] : []));
});
