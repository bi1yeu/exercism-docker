FROM ubuntu:18.04

RUN apt-get update && \
    apt-get -y dist-upgrade && \
    apt-get install -y \
    wget \
    tree \
    git \
    vim && \
    apt-get clean

RUN wget https://github.com/exercism/cli/releases/download/v3.0.5/exercism-linux-64bit.tgz && \
    tar xzf exercism-linux-64bit.tgz && \
    rm exercism-linux-64bit.tgz && \
    mv exercism /usr/local/bin/

RUN mkdir /workspace
WORKDIR /workspace

COPY start.sh /usr/local/bin/start.sh

ENTRYPOINT start.sh
