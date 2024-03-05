ARG NODE_IMAGE=20-bookworm
FROM node:${NODE_IMAGE}

RUN apt-get update 
RUN apt-get install -y python3-pip jq

COPY install_awscli.sh .
ARG BREAK_PACKAGES
RUN BREAK_PACKAGES=$BREAK_PACKAGES ./install_awscli.sh 

# RUN rm -rf /var/lib/apt/lists/*

# RUN node --version

