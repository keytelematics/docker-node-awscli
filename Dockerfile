FROM node:20-bookworm

RUN apt-get update 
RUN apt-get install -y python3-pip
RUN pip3 install awscli --break-system-packages
RUN rm -rf /var/lib/apt/lists/*

RUN node --version

