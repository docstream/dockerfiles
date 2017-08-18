FROM beevelop/nodejs-python:latest

RUN apt-get install -yy wget && \
  pip install awscli && \
  wget https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 && \
  chmod +x jq-linux64