# last u14 compat rel
FROM phusion/baseimage:0.9.18

ENV MVN_URL http://apache.osuosl.org/maven/maven-3
ENV MAVEN_VERSION 3.3.9


RUN mkdir -p /usr/share/maven \
  && curl -fsSL $MVN_URL/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz \
    | tar -xzC /usr/share/maven --strip-components=1 \
  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

RUN DEBIAN_FRONTEND=noninteractive \
      apt-get update -yy && \
      apt-get install -yy git unzip openjdk-7-jdk  && \
      rm -rf /tmp/* && \
      apt-get clean

      
ENV MAVEN_HOME /usr/share/maven
