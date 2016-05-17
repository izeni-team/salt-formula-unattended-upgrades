# -*- coding: utf-8 -*-
# vim: ft=sls

unattended-upgrades-config:
  debconf.set:
    - data:
        'unattended-upgrades/enable_auto_updates':
          type: boolean
          value: "true"

  cmd.wait:
    - name: "dpkg-reconfigure unattended-upgrades"
    - watch:
      - debconf: unattended-upgrades-config
    - env:
      DEBIAN_FRONTEND: noninteractive
      DEBIAN_NONINTERACTIVE_SEEN: "true"
