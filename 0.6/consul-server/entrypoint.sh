#!/bin/sh


IP=$(curl http://169.254.169.254/latest/meta-data/local-ipv4)
if ! [ -z $IP ]; then
  $IP_OPT="-advertise $IP"
fi

exec /bin/consul agent -server -config-dir=/config $IP_OPT $*
