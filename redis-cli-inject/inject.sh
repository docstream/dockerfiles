#!/bin/sh

REDIS_HOST=${REDIS_HOST:-localhost}

echo REDIS_HOST = $REDIS_HOST

ROOTKEY=${1%%=*}
KV=${1#*=}
K=${KV%=*}
V=${KV#*=}

echo "HMSET $ROOTKEY $K $V .."

redis-cli -h $REDIS_HOST HMSET $ROOTKEY $K $V