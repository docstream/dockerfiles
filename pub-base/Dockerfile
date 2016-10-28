FROM docstream/nix:latest
MAINTAINER Dynnamitt

ENV REFRESHED_AT 2016-9-8

# extra tools and PRINCE deps
RUN apt-get install -yy \ 
      make sudo xsltproc m4 libxml2-utils curl \
      libtiff5 libgif4 libfontconfig1

# prince pack EXTERNAL mess
RUN curl http://www.princexml.com/download/prince_9.0-5_ubuntu14.04_amd64.deb \
      > /tmp/p9.deb && dpkg -i /tmp/p9.deb && rm -rf /tmp/*
