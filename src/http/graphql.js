import { ApolloServer } from 'apollo-server-express';

import { schema } from '../graphql';
import { createLoaders } from '../graphql/loaders/createLoaders';

// Create a new Apollo GraphQL sever with the loaded GraphQL schema.
const server = new ApolloServer({
  schema,
  context() {
    const loaders = createLoaders();

    return {
      loaders,
    };
  },
});

// Bind the Apollo GraphQL server to the express application.
export default app => {
  server.applyMiddleware({
    app,
    path: '/',
  });
};
