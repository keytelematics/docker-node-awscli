#!/usr/bin/env bash

echo "Building arm64 image"
docker buildx build --platform linux/arm64 -t keytelematics/docker-node-awscli:20-bookworm-arm64 .

echo "Building default image"
docker build -t keytelematics/docker-node-awscli:20-bookworm .
