ARG NODE_IMAGE=20-bookworm
ARG PIP_ARGS=
FROM node:${NODE_IMAGE}

RUN apt-get update 
RUN apt-get install -y python3-pip jq
RUN pip3 install awscli ${PIP_ARGS}
RUN rm -rf /var/lib/apt/lists/*

RUN node --version

