#!/bin/bash
DIR=$(pwd)

ctr --namespace cli.io run --net-host --rm \
    --mount type=bind,src="$DIR",dst=/app,options=rbind:rw \
    docker.io/library/composer:latest composer \
    composer $@