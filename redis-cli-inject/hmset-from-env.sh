#!/bin/sh

REDIS_HOST=${REDIS_HOST:-localhost}

echo REDIS_HOST = $REDIS_HOST

# $1 = x_y_z000001=ENV=VAL

hmset() {
 
  ROOTKEY_ENC=$(echo ${1%%=*}| sed 's/_*[0-9]*$//')
  ROOTKEY_WRKSPC=$(echo $ROOTKEY_ENC|tr _ .)
  KV=${1#*=}
  K=${KV%=*}
  V=${KV#*=}

  echo "HMSET $ROOTKEY_WRKSPC '$K' '$V' .."

  redis-cli -h $REDIS_HOST HMSET "$ROOTKEY_WRKSPC" "$K" "$V"
}

IFS='
'

for SETTING in $(env | egrep 'readin_no_*[[:digit:]]*=')
do
  hmset $SETTING
done