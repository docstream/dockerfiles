FROM gitlab/gitlab-runner:latest

# we must have jq DOH!
RUN wget https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64; \
    chmod +x jq-linux64; \
    mv jq-linux64 /usr/bin/jq