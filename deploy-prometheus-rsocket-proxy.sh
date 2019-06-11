#!/bin/bash

kapp deploy -a rsocket-proxy --diff-changes \
  -f <(ytt -f prometheus-rsocket-proxy/scripts/kubernetes/proxy/ \
           -f ops-files/small-foot-print.yml \
           -f ops-files/gateway.yml \
           $@)

