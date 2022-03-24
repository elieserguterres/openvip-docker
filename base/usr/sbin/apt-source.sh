#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive && \
    echo "$2" > "/etc/apt/sources.list.d/$1.list"
