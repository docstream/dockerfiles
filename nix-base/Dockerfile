# old and "safe"
FROM phusion/baseimage:0.9.17
MAINTAINER Dynnamitt

# runtime for vcs-agent
#  smaller version of :pub image

ENV REFRESHED_AT 2016-10-31
 
# THE TOOLS !!

RUN DEBIAN_FRONTEND=noninteractive \
  apt-get update -yy && \
  apt-get install -yy \
  sudo amqp-tools curl redis-tools git parallel gawk jq && \
  rm -rf /tmp/* && \
  apt-get clean

# sync w globals- in do-ctl

