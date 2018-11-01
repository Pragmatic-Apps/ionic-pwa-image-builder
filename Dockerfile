FROM docker:latest
LABEL maintainer="pragmatic_apps <hello@pragmatic-apps.de>"

# INSTALL DEPENCIES AND NODE
RUN apk add --update --no-cache git bzip2 openssh-client nodejs nodejs-npm

# INSTALL IONIC
RUN npm i -g --unsafe-perm cordova ionic && \
ionic --no-interactive config set -g daemon.updates false