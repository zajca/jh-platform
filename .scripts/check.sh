#!/usr/bin/env bash
DOCKER=`which docker`
if [ -z "$DOCKER" ];
then
    echo "'docker' was not found on your system." >&2
    exit 1
fi

DOCKERCOMPOSE=`which docker-compose`
if [ -z "$DOCKERCOMPOSE" ];
then
    echo "'docker-compose' was not found on your system." >&2
    exit 1
fi
