# samba.docker
#
# VERSION               0.0.1

FROM aarch64/alpine
MAINTAINER David Coon "dcoon@davidcoon.org"

RUN apk add -U samba shadow \
        && rm -rf /var/cache/apk/*


VOLUME /etc/samba/samba.conf

EXPOSE 137/udp
EXPOSE 138/udp
EXPOSE 139
EXPOSE 445

#ENTRYPOINT smbd
CMD sh
