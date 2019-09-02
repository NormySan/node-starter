import supertest from 'supertest';

import { server } from '../server';

describe('GraphQL Playground', () => {
  it('should respond with a 200 status', async () => {
    const response = await supertest(server)
      .get('/')
      .set('Accept', 'text/html');

    expect(response.status).toBe(200);
  });
});
