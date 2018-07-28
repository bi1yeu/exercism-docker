FROM exercism:latest

MAINTAINER bilyeu.matt@gmail.com

ENV TRACK python

RUN apt-get update && \
    apt-get -y dist-upgrade && \
    apt-get install -y \
    python3.6 \
    python3-pip \
    build-essential \
    libssl-dev \
    libffi-dev \
    python-dev && \
    apt-get clean

RUN pip3 install pytest
