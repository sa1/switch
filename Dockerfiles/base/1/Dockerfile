FROM ubuntu:14.04.1
MAINTAINER Anurag Priyam <anurag08priyam@gmail.com>

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
      zsh fish && \
      apt-get clean

COPY start.sh /usr/local/bin/
