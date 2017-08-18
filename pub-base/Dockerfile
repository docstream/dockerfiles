# keep version 0.9.17 >>> libgif and prince must be in SYNC
# old and "safe", try 0.9.18 since its last on u14
FROM phusion/baseimage:0.9.18 

MAINTAINER Dynnamitt

ENV REFRESHED_AT 2016-10-31

ENV SOLR_POST_URL http://solr:8983/solr/$FQDN/update
ENV SOLR_QUERY_URL http://solr:8983/solr/_FQDN_/select
ENV BUILD_DIR /var/build

# FIXME `align' w amqp OR JUST use gitlab-CI !!!
###ENV REDIS_INTRA_HOST messages
###ENV REDIS_MAIN_CH ds-events
###ENV REDIS_PULLED_NS ds-vcs-pulled

# extra tools and PRINCE deps
# line1 is ALMOST common w :nix 
RUN DEBIAN_FRONTEND=noninteractive \
      apt-get update -yy && \
      apt-get install -yy \
      sudo amqp-tools curl redis-tools git parallel gawk \
      make xsltproc m4 libxml2-utils \
      libtiff5 libgif4 libfontconfig1 wget \
      python python-pip && \
      pip install s3cmd awscli && apt-get purge -yy python-pip && \
      wget https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 && \
      chmod +x jq-linux64 && \
      mv jq-linux64 /usr/bin/jq && \
      rm -rf /tmp/* && apt-get clean


# prince pack EXTERNAL mess
# NEED to fit newer UBUNTU someday...
RUN curl http://www.princexml.com/download/prince_9.0-5_ubuntu14.04_amd64.deb \
    > /tmp/p9.deb && dpkg -i /tmp/p9.deb && rm -rf /tmp/*

