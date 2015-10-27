FROM phusion/baseimage:0.9.17
MAINTAINER Dynnamitt

# git + redis + parallel
RUN DEBIAN_FRONTEND=noninteractive \
  apt-get update -yy && \
  apt-get install -yy redis-tools git parallel && \
  apt-get clean
