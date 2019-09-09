import { GraphQLScalarType, Kind } from 'graphql';
import { isISBN } from 'validator';

export const ISBNScalar = new GraphQLScalarType({
  name: 'ISBN',
  description:
    'The International Standard Book Number is a numeric commercial book identifier which is intended to be unique. Publishers purchase ISBNs from an affiliate of the International ISBN Agency. An ISBN is assigned to each separate edition and variation of a publication.',
  serialize(value) {
    if (isISBN(value)) {
      return value;
    }

    throw new TypeError('ISBN value must represent a valid ISBN number.');
  },
  parseValue(value) {
    if (isISBN(value)) {
      return value;
    }

    throw new TypeError('ISBN value must represent a valid ISBN number.');
  },
  parseLiteral(ast) {
    if (!ast.value) {
      return null;
    }

    if (ast.kind !== Kind.STRING) {
      throw new TypeError('ISBN must be a string value.');
    }

    if (isISBN(ast.value)) {
      return ast.value;
    }

    throw new TypeError('ISBN value must represent a valid ISBN number.');
  },
});
