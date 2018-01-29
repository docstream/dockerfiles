FROM goodsmileduck/redis-cli:latest

ENV readin_no PUB_M4_TEMPL=v2_m4.html
ENV demo_readin_no PUB_M4_TEMPL=v2_m4_demo.html

ENV readin_no QUEUE_URL=amqp://user:xx@ip-yy-yy-yy-yy.eu-central-1.compute.internal

ENV REDIS_HOST redis

COPY inject.sh /tmp/inject.sh

CMD env | egrep 'readin_no=' | xargs /tmp/inject.sh