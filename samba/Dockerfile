# samba.docker
#
# VERSION               0.0.1

FROM      ubuntu
MAINTAINER David Coon "dcoon@davidcoon.org"

# make sure the package repository is up to date
RUN apt-get update && apt-get clean 

# install samba
RUN apt-get install -y samba

ADD watchprocess.sh /usr/sbin/watchprocess
ADD startsamba.sh /usr/sbin/startsamba

VOLUME /var/lib/samba
VOLUME /var/log/samba
VOLUME /etc

CMD startsamba
