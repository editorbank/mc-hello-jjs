#!/bin/sh
systemctl stop memcached nginx
systemctl status memcached nginx
