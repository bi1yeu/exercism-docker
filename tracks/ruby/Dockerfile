FROM  --platform=linux/amd64 exercism:latest

MAINTAINER matt@matthewbilyeu.com

ENV TRACK ruby

RUN apt-get update && \
    apt-get -y dist-upgrade && \
    apt-get install -y \
    git \
    autoconf \
    bison \
    build-essential \
    curl \
    libssl-dev \
    libyaml-dev \
    libreadline6-dev \
    zlib1g-dev \
    libncurses5-dev \
    libffi-dev \
    libgdbm5 \
    libgdbm-dev && \
    apt-get clean

SHELL ["/bin/bash", "-c"]
RUN git clone https://github.com/rbenv/rbenv.git ~/.rbenv
RUN echo 'export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"' >> ~/.bashrc
RUN echo 'eval "$(rbenv init -)"' >> ~/.bashrc
ENV PATH="/root/.rbenv/bin:/root/.rbenv/shims:${PATH}"
RUN eval "$(rbenv init -)"
RUN git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
RUN rbenv install 2.6.3
RUN rbenv global 2.6.3
RUN echo "gem: --no-document" > ~/.gemrc
RUN gem install minitest
