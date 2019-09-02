import { importSchema } from 'graphql-import';
import { makeExecutableSchema } from 'graphql-tools';
import path from 'path';

import { resolvers } from './resolvers';

// Import the schema as a string of type definitions.
const typeDefs = importSchema(path.resolve(__dirname, 'schema.graphql'));

// Create an executable schema from the type definitions and resolvers that
// can be used with the GraphQL server.
export const schema = makeExecutableSchema({
  typeDefs,
  resolvers,
});
