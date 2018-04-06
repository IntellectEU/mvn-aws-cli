FROM maven:3.5-jdk-8-alpine

LABEL maintainer="blockchain@intellecteu.com"

RUN apk --no-cache add \
    python-dev \
    zip \ 
    jq \
    && curl -O https://bootstrap.pypa.io/get-pip.py \
    && python get-pip.py \
    && pip install awscli \