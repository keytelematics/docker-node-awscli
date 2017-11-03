FROM keytelematics/docker-awscli

# add node from https://github.com/nodejs/docker-node/blob/39a5c8a3be7fff2ddc67a2e72919d0a3841b235f/8.9/alpine/Dockerfile

RUN apk -Uuv add nodejs nodejs-npm && \
	rm /var/cache/apk/*

RUN npm install yarn --global