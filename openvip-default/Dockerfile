FROM elieserguterres/base-php

ENV NPM_CONFIG_CACHE "/tmp"

COPY ./usr/sbin/npm-*.sh /usr/sbin/

RUN apt-install.sh \
        php7.4-gd \
        php7.4-mbstring \
        php7.4-mysql \
        php7.4-pdo \
        php7.4-zip \
        php7.4-pgsql \
        php7.4-xml && \
        apt-key.sh 1655A0AB68576280 && \
        apt-source.sh nodejs "deb https://deb.nodesource.com/node_12.x buster main" && \
        apt-install.sh "nodejs=12.*" && \
        npm-install.sh \
        node-sass \
        cross-env

# RUN update-alternatives --set php /usr/bin/php7.4

COPY . /
