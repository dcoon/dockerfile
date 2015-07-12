# netatalk.docker
#
# VERSION               3.1.7

FROM      ubuntu:14.04
MAINTAINER David Coon "dcoon@davidcoon.org"

# make sure the package repository is up to date
RUN apt-get update

# install deps
RUN apt-get install -y wget avahi-daemon build-essential libevent-dev libssl-dev libgcrypt11-dev libkrb5-dev libpam0g-dev libwrap0-dev libdb-dev libtdb-dev libmysqlclient-dev libavahi-client-dev libacl1-dev libldap2-dev libcrack2-dev systemtap-sdt-dev libdbus-1-dev libdbus-glib-1-dev libglib2.0-dev 

# build netatalk
RUN wget -O- http://sourceforge.net/projects/netatalk/files/netatalk/3.1.7/netatalk-3.1.7.tar.bz2/download | tar -jxv
RUN cd netatalk-3.1.7 ; ./configure --prefix=/usr --sysconfdir=/etc/netatalk ; make ; make install

# add default netatalk configuration
ADD *.conf /etc/netatalk/
ADD ./startnetatalk /usr/sbin/
RUN chmod u+x /usr/sbin/startnetatalk
ADD https://github.com/dcoon/dockerfile/raw/master/util/watchprocess /usr/sbin/
RUN chmod u+x /usr/sbin/watchprocess

# turn off dbus support in avahi
RUN cd /etc/avahi/ ; mv avahi-daemon.conf avahi-daemon.conf.original ; sed  's/.*enable-dbus=.*/enable-dbus=false/g' /etc/avahi/avahi-daemon.conf.original > /etc/avahi/avahi-daemon.conf

# redirect logs to stdout
RUN ln -sf /dev/stdout /var/log/afpd.log

VOLUME /etc/avahi
VOLUME /etc/netatalk

EXPOSE 548
EXPOSE 5353/udp
EXPOSE 4700

ENTRYPOINT ["/usr/sbin/startnetatalk"]
