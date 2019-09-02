import { createTestClient } from 'apollo-server-testing';
import gql from 'graphql-tag';

import { createTestServer } from './createTestServer';

it('fetches an array of books', async () => {
  const GET_BOOKS = gql(`
    query {
      books {
        id
        title
        author
      }
    }
  `);

  // Create a test client with a mock server.
  const { query } = createTestClient(createTestServer());

  // Run the query against the test server and snapshot the output.
  const response = await query({ query: GET_BOOKS });
  expect(response).toMatchSnapshot();
});

it('fetches a single book', async () => {
  const GET_BOOK = gql(`
    query {
      book(id: "1") {
        id
        title
        author
      }
    }
  `);

  // Create a test client with a mock server.
  const { query } = createTestClient(createTestServer());

  // Run the query against the test server and snapshot the output.
  const response = await query({ query: GET_BOOK });
  expect(response).toMatchSnapshot();
});

it('returns null when no book is found', async () => {
  const GET_BOOK_NOT_FOUND = gql(`
    query {
      book(id: "10") {
        id
        title
        author
      }
    }
  `);

  // Create a test client with a mock server.
  const { query } = createTestClient(createTestServer());

  // Run the query against the test server and snapshot the output.
  const response = await query({ query: GET_BOOK_NOT_FOUND });
  expect(response).toMatchSnapshot();
});
