import DataLoader from 'dataloader';

import { Book } from '../app/book/Book';

export interface GraphQLDataLoaders {
  authorBooks: DataLoader<number, Book[]>;
}
