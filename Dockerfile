FROM docker:latest
LABEL maintainer="pragmatic_apps <hello@pragmatic-apps.de>"

# INSTALL NODE
RUN apk update && apk add --no-cache nodejs nodejs-npm

# INSTALL IONIC
RUN npm i -g --unsafe-perm cordova ionic && \
ionic --no-interactive config set -g daemon.updates false