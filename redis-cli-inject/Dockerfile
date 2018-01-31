FROM goodsmileduck/redis-cli:latest

ENV readin_no_01 PUB_M4_TEMPL=v2_m4.html
ENV readin_no_02 QUEUE_URL=amqp://user:xx@ip-yy-yy-yy-yy.eu-central-1.compute.internal

ENV demo_readin_no_01 PUB_M4_TEMPL=v2_m4_demo.html



ENV REDIS_HOST redis

RUN mkdir /app
COPY ./hmset-from-env.sh /app/hmset-from-env.sh

CMD /app/hmset-from-env.sh