FROM phusion/baseimage:0.9.17
MAINTAINER Dynnamitt

# http://crosbymichael.com/dockerfile-best-practices-take-2.html
 
# git + redis + parallel
RUN DEBIAN_FRONTEND=noninteractive \
  apt-get install -yy redis-tools git parallel 

# Common ENVs
ENV VCS_DIR /var/vcs
ENV BUILD_DIR /var/build

# Common 
COPY . /opt/app
WORKDIR /opt/app

