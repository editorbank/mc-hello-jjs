#!/bin/sh
source ./setting.sh

echo "Download ..."

[[ ! -d ./tmp ]] && mkdir ./tmp

download1(){
  echo $1 ...
  [[ ! -f $1 ]] && $CURL -o $1 -k $2
  [[ ! -f $1 ]] && exit 1
}

download1 ./tmp/xmemcached.jar ${xmemcached_url}
download1 ./tmp/slf4j_api.jar  ${slf4j_api_url}
download1 ./tmp/slf4j_impl.jar ${slf4j_impl_url}

echo "Done."
