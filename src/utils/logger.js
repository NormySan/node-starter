import { createLogger, transports } from 'winston';

// Logger utility
//
// The logger utility is based on the winston library. This is a very
// versatile library that supports multiple ways of logging errors.
//
// Read more: https://github.com/winstonjs/winston

export const logger = createLogger({
  transports: [new transports.Console({})],
});
