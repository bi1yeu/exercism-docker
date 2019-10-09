FROM exercism:latest

MAINTAINER liang.shi@protonmail.com

ENV TRACK go

RUN wget https://dl.google.com/go/go1.12.7.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.12.7.linux-amd64.tar.gz && \
    rm go1.12.7.linux-amd64.tar.gz

ENV PATH "$PATH:/usr/local/go/bin"
