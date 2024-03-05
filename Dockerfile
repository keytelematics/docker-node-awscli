ARG NODE_IMAGE=20-bookworm
FROM node:${NODE_IMAGE} as base

RUN apt-get update 
RUN apt-get install -y python3-pip jq

FROM base as default
RUN pip3 install awscli --break-system-packages
RUN rm -rf /var/lib/apt/lists/*
RUN node --version

FROM base as no-break-packages
RUN pip3 install awscli
RUN rm -rf /var/lib/apt/lists/*
RUN node --version
