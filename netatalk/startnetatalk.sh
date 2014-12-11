#!/bin/bash

/usr/sbin/avahi-daemon -D
/usr/sbin/afpd
 
watchprocess.sh afpd avahi-daemon
