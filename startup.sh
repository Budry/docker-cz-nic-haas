#!/usr/bin/env sh

python3 -m haas_proxy -n -l /var/log/haas.log --pidfile /var/run/haas.pid haas_proxy --device-token ${DEVICE_TOKEN}