#!/bin/sh


IP=$(curl http://169.254.169.254/latest/meta-data/local-ipv4)

exec /bin/consul agent -server -config-dir=/config -advertise $IP $*
