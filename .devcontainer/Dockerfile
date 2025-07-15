FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
  build-essential libncurses5-dev gawk git subversion \
  libssl-dev gettext unzip file libelf-dev ecj fastjar \
  java-propose-classpath wget python3 python3-distutils \
  python3-setuptools rsync ccache time python2 \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Cria alias para garantir que "python" aponte para python2
RUN update-alternatives --install /usr/bin/python python /usr/bin/python2 1

RUN apt-get update && apt-get install -y locales \
 && locale-gen en_US.UTF-8 \
 && update-locale LANG=en_US.UTF-8
ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8

WORKDIR /work
