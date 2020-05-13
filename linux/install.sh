#!/bin/sh

sh ./download.sh

[ $? -ne 0 ] && echo "Need root rights" && exit 1
yum install -y memcached nginx telnet
[ $? -ne 0 ] && echo "Need root rights" && exit 1
systemctl stop memcached nginx
[ $? -ne 0 ] && echo "Need root rights" && exit 1
#systemctl enable memcached nginx

[ ! -f /etc/nginx/conf.d/8008.conf -a -f ../common/8008.conf ] && cp ../common/8008.conf /etc/nginx/conf.d/8008.conf
[ ! -f /etc/nginx/conf.d/8008.conf ] && echo Error: Not exist file /etc/nginx/conf.d/8008.conf !
chmod +x ./*.sh
[ "`getsebool httpd_can_network_memcache`" == "httpd_can_network_memcache --> off" ] && setsebool httpd_can_network_memcache on
sh ./svr_start.sh

