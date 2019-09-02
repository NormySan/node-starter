import config from 'config';

import { server } from './http/server';

const port = config.get('app.port');

// prettier-ignore
server.listen(port, () => {
  console.log(`Server listening on http://127.0.0.1:${port}`);
});
