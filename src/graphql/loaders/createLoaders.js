import { authorBooksLoader } from './authorBooksLoader';

export function createLoaders() {
  return {
    authorBooks: authorBooksLoader,
  };
}
