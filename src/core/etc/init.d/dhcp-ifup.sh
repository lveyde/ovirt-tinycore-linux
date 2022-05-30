#!/bin/sh

DEVICE=${1}

echo "Setting up ${DEVICE}"
/sbin/dhclient ${DEVICE} -pf /var/run/dhclient.${DEVICE}.pid >/dev/null 2>&1 &
/sbin/dhclient -6 ${DEVICE} -pf /var/run/dhclient6.${DEVICE}.pid >/dev/null 2>&1 &
