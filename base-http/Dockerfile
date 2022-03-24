FROM elieserguterres/base

RUN apt-key.sh ABF5BD827BD9BF62 && \
    apt-source.sh nginx "deb https://nginx.org/packages/mainline/debian buster nginx" && \
    apt-install.sh \
        gettext-base \
        nginx \
        rsync \
        supervisor \
        wget

COPY . /

EXPOSE 80

HEALTHCHECK CMD wget --user-agent "Docker-HealthChecker/1.0" --output-document /dev/null http://127.0.0.1

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
