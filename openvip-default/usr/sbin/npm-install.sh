#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive && \
    npm install --global --unsafe-perm $* && \
    npm cache clear --force && \
    rm -rf "/tmp/_locks"
