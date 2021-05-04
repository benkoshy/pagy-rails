#!/usr/bin/dumb-init bash
set -e

./bin/webpack-dev-server &
./bin/rails server -b 0.0.0.0
