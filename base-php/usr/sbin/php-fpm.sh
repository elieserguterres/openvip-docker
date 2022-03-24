#!/usr/bin/env sh

set -a

if [ -z "$PHP_FPM_MAX_CHILDREN" ]; then
    export PHP_FPM_MAX_CHILDREN="5"
fi

export PHP_VERSION=`php -r "echo sprintf('%d.%d', PHP_MAJOR_VERSION, PHP_MINOR_VERSION);"`

rsync --archive /etc/php/default/ /etc/php/$PHP_VERSION/ && php-fpm$PHP_VERSION
