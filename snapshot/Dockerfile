# snapshot
#
# VERSION              1.0.0 

FROM      ubuntu:14.04
MAINTAINER David Coon "dcoon@davidcoon.org"

# make sure the package repository is up to date
RUN apt-get update

# install deps
RUN apt-get install -y wget btrfs-tools

# install btrfs-snap script
ADD https://github.com/jf647/btrfs-snap/raw/master/btrfs-snap /usr/sbin
RUN chmod a+x /usr/sbin/btrfs-snap 

# install cron jobs
RUN cp /etc/crontab /etc/crontab.original
ADD crontab /etc/crontab

VOLUME /etc

CMD cron -L 4 && tail -f /var/log/messages 
