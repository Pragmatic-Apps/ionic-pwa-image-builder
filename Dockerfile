FROM docker:latest
LABEL maintainer="pragmatic_apps <hello@pragmatic-apps.de>"

# INSTALL NODE
RUN apk update && apk add --no-cache nodejs nodejs-npm

# INSTALL IONIC
RUN npm install -g cordova ionic