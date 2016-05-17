# -*- coding: utf-8 -*-
# vim: ft=sls

unattended-upgrades-pkg:
  pkg.installed:
    - name: unattended-upgrades
