#!/bin/bash

set -e -u

here="$(cd "$(dirname "${0}")" && pwd)"

install -Dm700 "${here}/usr/local/bin/mybinary" /usr/local/bin/mybinary
install -Dm644 "${here}/etc/systemd/system/myservice.service" \
  /etc/systemd/system/myservice.service
systemctl enable myservice.service
