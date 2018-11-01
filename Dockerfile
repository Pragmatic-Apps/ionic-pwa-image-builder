FROM docker:latest
LABEL maintainer="pragmatic_apps <hello@pragmatic-apps.de>"

# INSTALL DEPENCIES AND NODE
RUN apk add --update --no-cache git bzip2 openssh-client python python-dev py-pip nodejs nodejs-npm

# INSTALL IONIC
RUN npm i -g --unsafe-perm cordova ionic@4.2.1 && \
ionic --no-interactive config set -g daemon.updates false
