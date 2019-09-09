import { makeExecutableSchema } from 'graphql-tools';

import { resolvers } from './resolvers';
import { typeDefs } from './typeDefs';

// Create an executable schema from the type definitions and resolvers that
// can be used with the GraphQL server.
export const schema = makeExecutableSchema({
  typeDefs,
  resolvers,
});
