#!/bin/bash

set -x
set -e
TAG=$1
PORTMAP=$2

# Build the docker image
if [[ "$(docker image inspect node-server:$TAG 2> /dev/null)" == [] ]]; then
  docker build -t node-server:$TAG .
fi

# Run the Docker Container
docker run -p $PORTMAP -it node-server:$TAG