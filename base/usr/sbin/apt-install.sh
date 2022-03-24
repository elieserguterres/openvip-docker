#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get install --yes --no-install-recommends $* && \
    apt-get autoclean && \
    find /var/lib/apt/lists -type f -delete
