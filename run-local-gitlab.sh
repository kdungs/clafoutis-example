#!/bin/bash

set -e -u

gitlab-runner exec docker \
  --docker-pull-policy="if-not-present" \
  --docker-privileged=true \
  my-image
