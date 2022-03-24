FROM berni/base-http

RUN apt-install.sh \
        git-core \
        unzip && \
    apt-key.sh B188E2B695BD4743 && \
    apt-source.sh php "deb https://packages.sury.org/php buster main" && \
    apt-key.sh B31B29E5548C16BF && \
    apt-source.sh newrelic "deb https://apt.newrelic.com/debian newrelic non-free"

ARG PHP_VERSION

RUN apt-install.sh \
        "php7.4-fpm" \
        "php7.4-curl"

RUN php -r "copy('https://getcomposer.org/installer', 'php://stdout');" | php -- --install-dir /usr/bin --filename composer --version=1.10.16 && \
    mkdir -p "/var/lib/composer"

ENV COMPOSER_ALLOW_SUPERUSER "1"
ENV COMPOSER_HOME "/tmp"

RUN composer global require hirak/prestissimo 2>&1 && \
    composer clear-cache 2>&1 && \
    rm -rf /tmp/cache

COPY . /
