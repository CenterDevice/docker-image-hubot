FROM rheinwerk/hubot

MAINTAINER Lukas Pustina <lukas.pustina@centerdevice.de>

# Install Scripts
RUN npm install --save hubot-centerdevice
COPY docker/external-scripts.json /carl/

