#!/bin/bash

set -e -u

here="$(cd "$(dirname "${0}")" && pwd)"

docker run \
  --privileged \
  --volume="${here}/dist":/dist:ro \
  --volume="${here}/image":/image \
  kdungs/clafoutis:latest \
  clafoutis \
  --distdir /dist \
  --outdir /image \
  --name clafoutis-example
