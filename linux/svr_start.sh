#!/bin/sh
systemctl start memcached nginx
systemctl status memcached nginx
