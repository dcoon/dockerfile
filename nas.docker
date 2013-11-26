# nas.docker
#
# VERSION               0.0.1

FROM      ubuntu:12.04
MAINTAINER David Coon "dcoon@davidcoon.org"

# enable universe
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list

# enable webmin repo
RUN echo "deb http://download.webmin.com/download/repository sarge contrib" > /etc/apt/sources.list.d/webmin.list
RUN echo "deb http://webmin.mirror.somersettechsolutions.co.uk/repository sarge contrib" >> /etc/apt/sources.list.d/webmin.list

# make sure the package repository is up to date
RUN apt-get update && apt-get upgrade 

# install dependencies
RUN apt-get install -y wget openssh-server rsync samba

# install webmin
RUN wget -qO - http://www.webmin.com/jcameron-key.asc | apt-key add -
RUN apt-get install webmin
RUN /usr/share/webmin/changepass.pl /etc/webmin root password

RUN apt-get clean

ENTRYPOINT /usr/share/webmin/miniserv.pl
CMD /etc/webmin/miniserv.conf