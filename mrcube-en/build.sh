#!/bin/sh
APP_VERSION=$(cat ../VERSION)
docker build --build-arg VER=${APP_VERSION} --no-cache=true --platform linux/amd64 -t morita/mrcube:${APP_VERSION}-en .
