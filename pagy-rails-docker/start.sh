#!/usr/bin/dumb-init bash

./bin/webpack-dev-server &
rm -rf ./tmp/pids/server.pid
rerun -- ./bin/rails server -b 0.0.0.0

# just keep the container running if we shoot down the default servers above
tail -f /dev/null
