FROM phusion/baseimage:0.9.17
MAINTAINER Dynnamitt

# http://crosbymichael.com/dockerfile-best-practices-take-2.html
 
# git + redis + parallel
RUN DEBIAN_FRONTEND=noninteractive \
  apt-get install -yy redis-tools git parallel 

# Common ENVs
ENV VCS_DIR /var/vcs
ENV BUILD_DIR /var/build
ENV MSG_MAIN_CHANNEL ds-events
ENV MSG_BBPOST_Q_PREFIX ds-bbpost.
ENV MSG_PULLED_Q_PREFIX ds-vcs-pulled.
ENV MSG_HOST messages

# Common 
COPY . /opt/app
WORKDIR /opt/app
