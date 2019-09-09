import { ApolloServer } from 'apollo-server-express';

import { resolvers } from '../resolvers';
import { typeDefs } from '../typeDefs';

// Creates a new Apollo server that can be used for testing purposes.
//
// Read more: https://www.apollographql.com/docs/apollo-server/features/testing/
export const createTestServer = () => {
  return new ApolloServer({ typeDefs, resolvers });
};
