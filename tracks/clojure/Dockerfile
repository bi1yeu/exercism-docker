FROM  --platform=linux/amd64 exercism:latest

MAINTAINER matt@matthewbilyeu.com

ENV TRACK clojure
ENV LEIN_REPL_PORT 4000
ENV LEIN_REPL_HOST 0.0.0.0

RUN apt-get update && \
    apt-get -y dist-upgrade && \
    apt-get install -y default-jdk && \
    apt-get clean

RUN wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein && \
    mv lein /usr/local/bin/lein && \
    chmod 755 /usr/local/bin/lein && \
    lein
