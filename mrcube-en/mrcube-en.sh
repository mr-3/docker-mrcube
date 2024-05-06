#!/bin/sh
xhost + 127.0.0.1
docker run --platform linux/amd64 -ti --rm -e DISPLAY=host.docker.internal:0 -v $HOME/mrcube:/home/mrcube/mrcube-home:z  --net=host --ipc=host morita/mrcube:24.5.1-en
