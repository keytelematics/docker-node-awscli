FROM keytelematics/docker-awscli

# add node from https://github.com/nodejs/docker-node/blob/39a5c8a3be7fff2ddc67a2e72919d0a3841b235f/8.9/alpine/Dockerfile

RUN apk -Uuv add nodejs nodejs-npm openssl && \
	rm /var/cache/apk/*

RUN npm install yarn --global

# 2: Download+Install PhantomJS, as the npm package 'phantomjs-prebuilt' won't work on alpine!
# See https://github.com/dustinblackman/phantomized
RUN set -ex \
  && apk add --no-cache --virtual .build-deps ca-certificates openssl \
  && wget -qO- "https://github.com/dustinblackman/phantomized/releases/download/2.1.1/dockerized-phantomjs.tar.gz" | tar xz -C / \
  && npm install -g phantomjs \
  && apk del .build-deps
  