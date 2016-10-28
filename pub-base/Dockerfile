FROM docstream/runtime:nix
MAINTAINER Dynnamitt

ENV REFRESHED_AT 2016-10-28

# extra tools and PRINCE deps
# bumped libgit from <4 to 7> --> princexml may be DEAD !
RUN apt-get install -yy \ 
      make sudo xsltproc m4 libxml2-utils \
      libtiff5 libgif7 libfontconfig1 && \
      rm -rf /tmp/* && apt-get clean

# prince pack EXTERNAL mess
# NEED to fit newer UBUNTU someday...
RUN curl http://www.princexml.com/download/prince_9.0-5_ubuntu14.04_amd64.deb \
      > /tmp/p9.deb && dpkg -i /tmp/p9.deb && rm -rf /tmp/*
