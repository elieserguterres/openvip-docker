FROM debian:10.2-slim

LABEL maintainer="elieserguterres@gmail.com"

COPY ./usr/sbin/apt-*.sh /usr/sbin/

RUN apt-install.sh apt-utils 2>&1 && \
    apt-install.sh \
        apt-transport-https \
        ca-certificates \
        gnupg

COPY . /

WORKDIR "/app"
