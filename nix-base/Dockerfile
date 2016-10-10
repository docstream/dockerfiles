FROM phusion/baseimage:0.9.17
MAINTAINER Dynnamitt

# http://crosbymichael.com/dockerfile-best-practices-take-2.html
#
ENV DOCKER_TAG 16_10_10
 
# git + redis + parallel + gawk
RUN DEBIAN_FRONTEND=noninteractive \
  apt-get update -yy && \
  apt-get install -yy amqp-tools redis-tools git parallel gawk && \
  rm -rf /tmp/* && apt-get clean

# Common ENVs
ENV VCS_DIR /var/vcs
ENV BUILD_DIR /var/build

# sync w globals- in do-ctl
ENV REDIS_INTRA_HOST messages
ENV REDIS_MAIN_CH ds-events
ENV SOLR_POST_URL http://solr:8983/solr/$FQDN/update
ENV SOLR_QUERY_URL http://solr:8983/solr/_FQDN_/select
ENV REDIS_PULLED_NS ds-vcs-pulled

# Common
ONBUILD COPY . /opt/app

WORKDIR /opt/app
