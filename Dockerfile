FROM debian:stretch

MAINTAINER Gleb Golubitsky <sectoid@gnolltech.org>

# Non-interactive frontend for debian stuff to reduce error noise
ENV DEBIAN_FRONTEND noninteractive

COPY stretch-backports.list /etc/apt/sources.list.d/

# Install basic essentials
RUN apt -y update \
 && apt -y upgrade \
 && apt -y install locales git-buildpackage debhelper \
 && echo "en_US.UTF-8 UTF-8" > /etc/locale.gen \
 && locale-gen en_US.UTF-8 \
 && dpkg-reconfigure locales \
 && /usr/sbin/update-locale LANG=en_US.UTF-8

WORKDIR /work/package

CMD ["/bin/bash"]
