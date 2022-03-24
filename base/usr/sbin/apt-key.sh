#!/usr/bin/env bash

export APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1 && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-key "$1" > /dev/null 2>&1
