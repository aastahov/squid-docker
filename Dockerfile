FROM alpine:3.5

RUN apk update \
    && apk add squid=3.5.27-r0 \
    && apk add apache2-utils \
    && apk add curl \
    && rm -rf /var/cache/apk/*
RUN htpasswd -b -c /etc/squid/password username password

COPY squid.conf /etc/squid/

ENTRYPOINT ["/usr/bin/squid"]
