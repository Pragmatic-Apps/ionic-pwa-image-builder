FROM docker:stable-dind
LABEL maintainer="pragmatic_apps <hello@pragmatic-apps.de>"

# INSALL NODE
RUN apk add --update --no-cache nodejs nodejs-npm

# INSTALL IONIC
RUN npm install -g cordova ionic