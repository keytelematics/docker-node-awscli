# docker-node-awscli

A custom docker-in-docker Debian Bookworm image with Node v20 and the AWS CLI pre-installed with both ARM and x86 images.
https://hub.docker.com/_/node/
Tags:
```
keytelematics/docker-node-awscli:20
```


## Building
To build run 
`./build.sh`

### Building only for ARM
Run `docker buildx build --build-arg="NODE_IMAGE=20-bookworm --platform linux/arm64 -t keytelematics/docker-node-awscli:20 .`

### Building for only x86
Run `docker build --build-arg="NODE_IMAGE=20-bookworm"  -t keytelematics/docker-node-awscli:20 .`