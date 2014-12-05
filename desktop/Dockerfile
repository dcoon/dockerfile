# destop.docker
#
# VERSION               0.0.1

FROM      ubuntu
MAINTAINER David Coon "dcoon@davidcoon.org"

# make sure the package repository is up to date
RUN apt-get update

# install desktop
RUN apt-get install -y xpra openssh-server xvfb lxterminal

# install devel tools
RUN apt-get install -y screen nano

# install Atom editor
#RUN apt-get -y install software-properties-common ; add-apt-repository ppa:webupd8team/atom ; apt-get update ; apt-get -y install atom

RUN mkdir /var/run/sshd

VOLUME /etc
VOLUME /home

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
