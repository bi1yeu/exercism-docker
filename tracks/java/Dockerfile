FROM --platform=linux/amd64 exercism:latest

MAINTAINER matt@matthewbilyeu.com

ENV TRACK java

# via https://exercism.io/tracks/java/installation#linux
RUN apt-get update && \
    apt-get -y dist-upgrade && \
    apt-get install -y \
    curl \
    zip \
    unzip
RUN curl -s "https://get.sdkman.io" | bash
RUN chmod a+x "$HOME/.sdkman/bin/sdkman-init.sh"
RUN bash -c 'source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk install java 11.0.2-open && sdk install gradle'
