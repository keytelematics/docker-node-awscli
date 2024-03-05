ARG NODE_IMAGE=20-bookworm
FROM node:${NODE_IMAGE}

RUN apt-get update 
RUN if [[ -z "$BREAK_PACKAGES" == true ]] ; then apt-get install -y python3-pip jq --break-system-packages ; else apt-get install -y python3-pip jq ; fi

RUN pip3 install awscli
RUN rm -rf /var/lib/apt/lists/*

RUN node --version

