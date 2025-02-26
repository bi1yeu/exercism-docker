FROM  --platform=linux/amd64 ubuntu:18.04

MAINTAINER matt@matthewbilyeu.com

RUN apt-get update && \
    apt-get -y dist-upgrade && \
    apt-get install -y \
    wget \
    tree \
    vim && \
    apt-get clean

RUN wget https://github.com/exercism/cli/releases/download/v3.5.4/exercism-3.5.4-linux-x86_64.tar.gz && \
    tar xzf exercism-3.5.4-linux-x86_64.tar.gz && \
    mv exercism /usr/local/bin/

RUN mkdir /workspace
WORKDIR /workspace

COPY start.sh /usr/local/bin/start.sh

ENTRYPOINT start.sh
