#!/bin/sh
APP_VERSION=$(cat ../VERSION)
xhost + 127.0.0.1
docker run --platform linux/amd64 -ti --rm -e DISPLAY=host.docker.internal:0 -v $HOME/mrcube:/home/mrcube:z  --net=host --ipc=host morita/mrcube:${APP_VERSION}-en
