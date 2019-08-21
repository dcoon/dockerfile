#
# Dockerfile for rsyncd
#

FROM aarch64/alpine
MAINTAINER David Coon <david@davidcoon.org>

RUN set -xe \
    && apk add -U rsync \
    && rm -rf /var/cache/apk/*

VOLUME /etc/rsync.conf
VOLUME /etc/rsync.secrets

EXPOSE 873

CMD rsync -v --daemon --no-detach --log-file /dev/stdout
