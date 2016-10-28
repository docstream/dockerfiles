FROM phusion/baseimage:0.9.19

# java 7{latest} , licensed-saxon WILL NOT have newer !!
RUN apt-get install -yy software-properties-common && \
      add-apt-repository -yy ppa:webupd8team/java && \
      apt-get update -yy && \
      echo "oracle-java7-installer shared/accepted-oracle-license-v1-1 select true" \
      | debconf-set-selections && \
      apt-get install -yy oracle-java7-installer git unzip && \
      rm -rf /tmp/* && apt-get clean

ENV MAVEN_VERSION 3.3.9

RUN mkdir -p /usr/share/maven \
  && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz \
    | tar -xzC /usr/share/maven --strip-components=1 \
  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn


ENV MAVEN_HOME /usr/share/maven
