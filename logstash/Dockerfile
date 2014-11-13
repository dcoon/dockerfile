# logstash.docker
#
# VERSION               0.0.1

FROM      dcoon/java
MAINTAINER David Coon "dcoon@davidcoon.org"

RUN apt-get install -y wget

# install logstash
RUN useradd -m logstash

WORKDIR /home/logstash

RUN wget https://download.elasticsearch.org/logstash/logstash/logstash-1.4.2.tar.gz  
RUN tar zxvf logstash-1.4.2.tar.gz

ADD logstash.conf /etc/logstash/

CMD /home/logstash/logstash-1.4.2/bin/logstash -f /etc/logstash/logstash.conf

VOLUME /var/log/logstash
VOLUME /etc/logstash

EXPOSE 514 514/udp 515 515/udp

RUN logstash-1.4.2/bin/plugin install contrib
