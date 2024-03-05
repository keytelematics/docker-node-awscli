#!/usr/bin/env bash

echo "Building arm64 image"
docker buildx build --build-arg="NODE_IMAGE=20-bookworm" --build-arg="BREAK_PACKAGES=true" --platform linux/arm64 -t keytelematics/docker-node-awscli:20 .

echo "Building default image"
docker build --build-arg="NODE_IMAGE=20-bookworm" --build-arg="BREAK_PACKAGES=true" -t keytelematics/docker-node-awscli:20 .
