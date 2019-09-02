const { config } = require('dotenv');

// Loads environment variables from the .env file located in the root of the
// project.
config();

module.exports = {
  app: {
    env: process.env.NODE_ENV,
    port: process.env.APP_PORT,
  },
  db: {
    database: process.env.DB_DATABASE,
    hostname: process.env.DB_HOSTNAME,
    password: process.env.DB_PASSWORD,
    port: process.env.DB_PORT,
    username: process.env.DB_USERNAME,
  },
};
