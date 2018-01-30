#!/bin/sh

REDIS_HOST=${REDIS_HOST:-localhost}

echo REDIS_HOST = $REDIS_HOST

ROOTKEY_ENC=${1%%=*}
ROOTKEY_WRKSPC=$(echo $ROOTKEY_ENC|tr _ .)
KV=${1#*=}
K=${KV%=*}
V=${KV#*=}

echo "HMSET $ROOTKEY_WRKSPC $K $V .."

redis-cli -h $REDIS_HOST HMSET $ROOTKEY_WRKSPC $K $V