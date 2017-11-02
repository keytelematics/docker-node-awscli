FROM node:8.9-stretch

RUN apt-get update \
   && apt-get install -y python-pip python gettext jq \
   && pip install awscli
