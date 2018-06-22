#!/usr/bin/env bash
getContainerNameByType() {
    # abort if no type is specified
    local CONTAINER_TYPE="$1"
    if [ -z "$CONTAINER_TYPE" ];
    then
        echo "No container type specified. Please specifiy a container type (api, auth, front, db, nginx)."  >&2
        return 1
    fi

    local containerName=$(cd $(pwd) && docker-compose ps -q $CONTAINER_TYPE)
    echo $containerName
    return 0
}
