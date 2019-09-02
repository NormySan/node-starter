import express from 'express';
import helmet from 'helmet';

import graphql from './graphql';
import { logger } from '../utils/logger';

const app = express();

// Trust the first proxy making requests to the server. This is useful when the
// app is running behind a proxy like Nginx or Apache.
//
// Read more: https://expressjs.com/en/guide/behind-proxies.html
app.set('trust proxy', 1);

// Helmet applies some useful security features that will make our app more
// secure by default.
//
// Read more: https://helmetjs.github.io/docs/
app.use(helmet());

// Register additional services with the express app.
graphql(app);

// Error handler
//
// This will log any errors encountered and return a 500 response.
//
// Read more: https://expressjs.com/en/guide/error-handling.html
// prettier-ignore
app.use((error, request, response) => {
  logger.log('error', error.message);
  response.status(500).send();
})

export const server = app;
