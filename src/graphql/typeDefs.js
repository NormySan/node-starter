import { importSchema } from 'graphql-import';
import path from 'path';

// Import the schema as a string of type definitions.
export const typeDefs = importSchema(path.resolve(__dirname, 'schema.graphql'));
