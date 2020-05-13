#!/bin/sh
source ./setting.sh

test_file(){
  [[ ! -f $1 ]] && echo "Error: Not exist file $1 !" && exit 1
}
test_file $mch_jjs
test_file ./tmp/xmemcached.jar
test_file ./tmp/slf4j_api.jar
test_file ./tmp/slf4j_impl.jar

$JJS -J-Djava.class.path=.:./tmp/xmemcached.jar:./tmp/slf4j_impl.jar:./tmp/slf4j_api.jar  $mch_jjs -- $*
