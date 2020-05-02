#!/bin/bash

kapp deploy -a rsocket-proxy --diff-changes \
  -f <(ytt -f vendor/prometheus-rsocket-proxy/scripts/kubernetes/proxy/ \
           -f ops-files/small-foot-print.yml \
           -f ops-files/metrics-tags.yml \
           -f ops-files/gateway.yml \
           $@ | kbld -f -)

