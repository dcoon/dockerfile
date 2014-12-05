# orientdb.docker
#
# VERSION               0.0.1

FROM      dcoon/java
MAINTAINER David Coon "dcoon@davidcoon.org"

RUN apt-get install -y wget

# create orientdb user
RUN useradd -m orientdb

WORKDIR /home/orientdb

RUN wget -O orientdb.tar.gz 'http://www.orientechnologies.com/download.php?file=orientdb-community-2.0-M2.tar.gz&os=linux'
#RUN wget -O orientdb.tar.gz 'http://www.orientechnologies.com/download.php?file=orientdb-community-1.7.10.tar.gz&os=linux'

RUN tar zxvf orientdb.tar.gz

#VOLUME /var/log/logstash
#VOLUME /etc/logstash
#CMD ["/usr/sbin/sshd", "-D"]

EXPOSE 2424 2480
