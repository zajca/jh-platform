#!/usr/bin/env bash
source ./.scripts/fnc.sh
source ./.scripts/check.sh
docker-compose up -d
source ./.scripts/run_front.sh
