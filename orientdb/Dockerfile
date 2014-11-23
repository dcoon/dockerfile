# orientdb.docker
#
# VERSION               0.0.1

FROM      dcoon/java
MAINTAINER David Coon "dcoon@davidcoon.org"

RUN apt-get install -y wget

# install logstash
RUN useradd -m orientdb

WORKDIR /home/orientdb

RUN wget -O orientdb.tar.gz 'http://www.orientechnologies.com/download.php?file=orientdb-community-2.0-M2.tar.gz&os=linux'

#RUN wget -O orientdb.tar.gz 'http://www.orientechnologies.com/download.php?file=orientdb-community-1.7.10.tar.gz&os=linux'




RUN tar zxvf *.tar.gz

#ADD logstash.conf /etc/logstash/

#CMD /home/logstash/logstash-1.4.2/bin/logstash -f /etc/logstash/logstash.conf

#VOLUME /var/log/logstash
#VOLUME /etc/logstash

EXPOSE 2424 2480
