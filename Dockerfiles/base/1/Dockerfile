FROM ubuntu:14.04.1
MAINTAINER Anurag Priyam <anurag08priyam@gmail.com>

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
      zsh fish locales debconf && \
      apt-get clean

COPY start.sh /usr/local/bin/
COPY wheel /etc/sudoers.d/

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8