#!/bin/sh


IP=$(curl http://169.254.169.254/latest/meta-data/local-ipv4)
BOOTSTRAP_EXPECT=${$BOOSTRAP_EXPECT:-3}
DC=${$DC:-dc1}

exec /bin/consul agent -server -config-dir=/config \
  -advertise $IP -bootstrap-expect $BOOSTRAP_EXCEPT \
  -dc $DC
