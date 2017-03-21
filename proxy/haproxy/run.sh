#!/bin/sh

set -u

HAPROXY_CONFIG=${HAPROXY_CONFIG:="/etc/haproxy/haproxy.cfg"}
echo "Deploying initial config"
cp /srv/initial.cfg "$HAPROXY_CONFIG"

exec /bootstrap.sh $@
