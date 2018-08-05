FROM exercism:latest

MAINTAINER bilyeu.matt@gmail.com

# from https://exercism.io/tracks/cpp/installation

ENV TRACK cpp

RUN apt-get update && \
    apt-get -y dist-upgrade && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:ubuntu-toolchain-r/test && \
    apt-get -qq -d update && \
    apt-get -qq -y install g++-5 \
    libboost-all-dev \
    cmake && \
    apt-get clean && \
    update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-5 90
