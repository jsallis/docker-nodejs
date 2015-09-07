FROM ubuntu:14.04
MAINTAINER Jason Sallis <jason@sall.is>

RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
RUN apt-get install -y nodejs
RUN apt-get install -y build-essential
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
