FROM ubuntu:14.04
MAINTAINER Jason Sallis <jason@sall.is>

ENV VERSION 0.12

RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_${VERSION} | sudo bash -
RUN apt-get install -y nodejs
RUN apt-get install -y build-essential
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
