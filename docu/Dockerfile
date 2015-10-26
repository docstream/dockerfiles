FROM docstream/nix-base:latest

# div.xml + m4/make
RUN apt-get update -yy && \
  apt-get install -yy make m4 xsltproc libxml2-utils && \
  apt-get clean
