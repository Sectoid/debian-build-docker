FROM debian:stretch

MAINTAINER Gleb Golubitsky <sectoid@gnolltech.org>

# Non-interactive frontend for debian stuff to reduce error noise
ENV DEBIAN_FRONTEND noninteractive

# Install basic essentials
RUN apt -y update \
 && apt -y upgrade \
 && apt -y install locales git-buildpackage \
 && echo "en_US.UTF-8 UTF-8" > /etc/locale.gen \
 && locale-gen en_US.UTF-8 \
 && dpkg-reconfigure locales \
 && /usr/sbin/update-locale LANG=en_US.UTF-8

VOLUME /package
WORKDIR /package

CMD ["/bin/bash"]
