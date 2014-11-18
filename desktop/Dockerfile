# destop.docker
#
# VERSION               0.0.1

FROM      ubuntu
MAINTAINER David Coon "dcoon@davidcoon.org"

# make sure the package repository is up to date
RUN apt-get update

# install desktop
RUN apt-get install -y xpra rox-filer openssh-server xserver-xephyr xdm fluxbox xvfb

RUN useradd -m dcoon

VOLUME /etc

EXPOSE 22
CMD ["sshd", "-D"]
