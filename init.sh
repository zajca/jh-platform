#!/usr/bin/env bash
source ./.scripts/fnc.sh
source ./.scripts/check.sh
source ./.scripts/update_modules.sh
docker-compose up -d

if [ ! -f ./api/.env.dist ]; then
    cp ./api/.env.dist ./api/.env
fi
containerName=$(getContainerNameByType "api")
$DOCKER exec $containerName composer install
$DOCKER exec $containerName php bin/console doctrine:schema:create

if [ ! -f ./auth/.env.dist ]; then
    cp ./auth/.env.dist ./auth/.env
fi
containerName=$(getContainerNameByType "auth")
$DOCKER exec $containerName composer install


if [ ! -f ./front/.env.dist ]; then
    cp ./front/.env.dist ./front/.env
fi
docker run -v "$PWD"/front:/usr/src/app -w /usr/src/app node:10 npm install
source ./.scripts/run_front.sh
