#!/bin/bash

kapp deploy -a rsocket-proxy --diff-changes \
  -f <(ytt -f vendor/prometheus-rsocket-proxy/scripts/kubernetes/proxy/ \
           -f overlays/small-foot-print.yml \
           -f overlays/metrics-tags.yml \
           -f overlays/gateway.yml \
           $@ | kbld -f -)

