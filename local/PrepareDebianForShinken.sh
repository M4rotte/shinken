#!/usr/bin/env bash

adduser --gecos "Shinken"
adduser shinken staff

SHKDIRS="/etc/shinken /var/log/shinken /var/run/shinken /var/lib/shinken"

for d in $SHKDIRS; do

  mkdir -p "$d"
  chown -R shinken:shinken "$d"
  chmod -R g+w "$d"

done

apt-get install git python-cherrypy python-pycurl python-pbr monitoring-plugins-basic python-setuptools mongodb python-pymongo \
      libgraphite2-dev python-bottle python-passlib graphite-carbon \
      nagios-snmp-plugins
