#!/bin/sh
APP_VERSION=$(cat ../VERSION)
docker build --no-cache=true --platform linux/amd64 -t morita/mrcube:${APP_VERSION}-common .
