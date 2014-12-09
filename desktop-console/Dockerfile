# destop.docker
#
# VERSION               0.0.1

FROM      ubuntu
MAINTAINER David Coon "dcoon@davidcoon.org"

# make sure the package repository is up to date
RUN apt-get update

# install devel tools
RUN apt-get install -y screen nano make git curl wget

# update nanorc syntax files
RUN cd /tmp ; git clone https://github.com/nanorc/nanorc.git ; cd nanorc ; make install-global
ADD nano /usr/local/share/nano/

# allow screen access to tty after su
#RUN chown :tty /dev/console ; chmod g+rw /dev/console

# create sshd isolation dir
RUN mkdir /var/run/sshd

# add core user to make editing files on coreos easier
RUN  sudo groupadd -g 500 core

# Usage
#
## setup persistant users and home dir
# docker run -i -t --name <username-home> desktop-console /bin/bash
# useradd -m -U -G sudo,tty,core <username>
# exit
#
# then
# docker run -i -t --volumes-from <username-home> desktop-console /bin/bash
# su <username>
#
# or
# docker run -i -t -p 2222:22 --volumes-from <username-home> desktop-console
#
# sshd will listen on host port 2222 
#

# create user dcoon
RUN useradd -m -s /bin/bash -U -G sudo,tty,core dcoon
RUN ln -s /usr/local/share/nano/nanorc.nanorc /home/dcoon/.nanorc

VOLUME /etc
#VOLUME /home

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
