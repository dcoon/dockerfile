#
# Dockerfile for plex
#

FROM      debian:buster-slim
MAINTAINER David Coon <david@davidcoon.org>

# upgrade debian base
RUN apt-get -y update \
    && apt-get -y upgrade

# install repo add required packages
RUN apt-get -y install unrar-free wget curl gnupg2

# install the plex repo
RUN echo deb https://downloads.plex.tv/repo/deb public main | tee /etc/apt/sources.list.d/plexmediaserver.list
RUN curl https://downloads.plex.tv/plex-keys/PlexSign.key | apt-key add -

# install plex
RUN apt-get -y update \
        && apt-get -y -o Dpkg::Options::=--force-confdef install plexmediaserver

# cleanup apt
RUN apt-get autoremove -y \
    && apt-get clean -y


ARG PLEX_DOWNLOAD="https://downloads.plex.tv/plex-media-server-new"
ARG PLEX_ARCH="aarch64"
ARG PLEX_DOWNLOAD_URL="${PLEX_DOWNLOAD}/${PLEX_RELEASE}/debian/plexmediaserver_${PLEX_RELEASE}_${PLEX_ARCH}.deb"

ENV PLEX_MEDIA_SERVER_APPLICATION_SUPPORT_DIR=/plex
VOLUME /plex

EXPOSE 32400 32400/udp 32469 32469/udp 5353/udp 1900/udp

CMD /usr/sbin/start_pms
