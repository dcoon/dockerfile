# netatalk.docker
#
# VERSION               0.0.1

FROM      ubuntu:14.10
MAINTAINER David Coon "dcoon@davidcoon.org"

# make sure the package repository is up to date
RUN apt-get update

# install depends
RUN apt-get install -y netatalk avahi-daemon

ADD services/*.service /etc/avahi/services/
ADD services/AppleVolumes.default /etc/netatalk/

VOLUME /mnt/timemachine
VOLUME /etc/avahi
VOLUME /etc/netatalk

RUN groupadd timemachine
RUN chmod 770 /mnt/timemachine ; chown :timemachine /mnt/timemachine


EXPOSE 548
EXPOSE 5353

#CMD ["/usr/sbin/sshd", "-D"]
