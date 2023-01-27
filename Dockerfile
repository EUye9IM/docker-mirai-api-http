From alpine

ARG MCL_VERSION=2.1.2

RUN apk update \
 && apk add openjdk17-jre \
 && mkdir /mcl \
 && cd mcl \
 && wget https://github.com/iTXTech/mirai-console-loader/releases/download/v$MCL_VERSION/mcl-$MCL_VERSION.zip \
 && unzip mcl-$MCL_VERSION.zip \
 && rm mcl-$MCL_VERSION.zip \
 && chmod +x ./mcl \
 && ./mcl --update-package net.mamoe:mirai-api-http --channel stable-v2 --type plugin

CMD cd /mcl && ./mcl -u
