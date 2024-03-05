ARG NODE_IMAGE=20-bookworm
FROM node:${NODE_IMAGE}

RUN apt-get update 
RUN apt-get install -y python3-pip jq
RUN if [[ -z "$BREAK_PACKAGES" == true ]] ; RUN pip3 install awscli --break-system-packages ; else pip3 install awscli ; fi

RUN rm -rf /var/lib/apt/lists/*

RUN node --version

