#!/bin/bash

set -e

echo $1
echo $2

if [ "$1" = 'dev' ]; then

  echo "-- Running Docker Nuxt ..."
  if [ "$2" = 'install' ]; then
    # install npm dependencies
    echo "-- Installing npm dependencies (npm install) ..."
    npm install
  fi
  echo "-- running (npm run dev)  ..."
  exec npm run dev
fi

exec "$@"
