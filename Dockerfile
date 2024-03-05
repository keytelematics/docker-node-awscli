ARG NODE_IMAGE=20-bookworm
ARG BREAK_PACKAGES
FROM node:${NODE_IMAGE}

RUN apt-get update 
RUN apt-get install -y python3-pip jq

ENV BREAK_PACKAGES=${BREAK_PACKAGES}
COPY install_awscli.sh .
RUN ./install_awscli.sh 

# RUN rm -rf /var/lib/apt/lists/*

# RUN node --version

