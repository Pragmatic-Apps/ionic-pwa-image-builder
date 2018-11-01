# Build Ionic PWA with Docker

This is a simple image we use in our CI process to create ionic PWAs and directly build deployment ready docker images.


## How to use it?


We use this image in our Gitlab CI config like this:

```yaml
image: pragmaticapps/ionic-pwa-image-builder:latest

stages:
  - deploy

cache:
  untracked: true
  key: "$CI_PROJECT_ID"
  paths:
    - node_modules/

before_script:
    - npm i

buildpwa:
  stage: deploy
  only:
    - master
  script:
    - ionic build
    - docker build -t $CI_DOCKER_IMAGENAME .
    - docker login  -u $CI_DOCKER_REPO_USERNAME -p $CI_DOCKER_REPO_TOKEN $CI_DOCKER_REPO
    - docker push $CI_DOCKER_REPO/$CI_DOCKER_IMAGENAME
``` 
