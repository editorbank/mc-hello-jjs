#!/bin/sh

sh ./mch.sh user user method GET uri /aaa host 127.0.0.1

curl -D- -H "iv-user: user" -H "iv-method: GET" http://127.0.0.1:8008/aaa | grep "200 OK"
if [ $? -eq 0 ]
then
  echo -e "\033[00;32m\nOK\033[0m"
  exit 0
else
  echo -e "\033[00;31m\nERRROR\033[0m"
  efit 1
fi

