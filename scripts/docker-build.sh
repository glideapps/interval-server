#!/bin/bash
set -e # Any subsequent(*) commands which fail will cause the shell script to exit immediately
docker buildx create --use
pkgV=$(node -e "console.log(require('./package.json').version.trim())")
specificVersionTag=glide/interval-server:$pkgV
# Build the docker image without pushing it to the registry
docker buildx build --output=type=docker -t glide/interval-server:latest -t $specificVersionTag .
