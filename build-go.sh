#!/usr/bin/env bash

docker build  -f Dockerfile.build -t wibble . | tee /tmp/build

container_id=$(cat /tmp/build | grep 'Successfully built' | awk '{print $3}')
docker create -ti --name dummy $container_id bash
docker cp dummy:/usr/bin/subspace-linux-amd64 .
docker rm -f dummy

