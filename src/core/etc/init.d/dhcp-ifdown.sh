#!/bin/sh

DEVICE=${1}

/sbin/dhclient ${DEVICE} -pf /var/run/dhclient.${DEVICE}.pid -x >/dev/null 2>&1 &
/sbin/dhclient -6 ${DEVICE} -pf /var/run/dhclient6.${DEVICE}.pid -x >/dev/null 2>&1 &
