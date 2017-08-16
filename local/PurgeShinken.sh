#!/usr/bin/env bash

deluser --quiet shinken
delgroup --quiet shinken

SHKDIRS="/etc/shinken /var/log/shinken /var/run/shinken /var/lib/shinken"

for d in $SHKDIRS; do

  rm -vrf "$d"

done

