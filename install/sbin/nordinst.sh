#!/bin/sh
#

#
# set command search
PATH=/usr/sbin:/sbin:/usr/bin:/bin ; export PATH

#
# mount some crucial things
mount -t proc proc /proc
mount -t sysfs sys /sys

#
# switch the (memory resident) root FS to R/W
mount -o remount,rw /

#
# extract installation settings from boot parm string
cat /proc/cmdline | xargs -n 1 | grep '^NORD' > /tmp/nordinst.set
. /tmp/nordinst.set

#
# conditionally set the hostname
hostname nordinst
if [ ! -z "$NORD_HOSTNAME" ] ; then hostname $NORD_HOSTNAME ; fi

#
# the following should be merged into network startup
modprobe qdio
modprobe ccwgroup
modprobe ipv6
modprobe qeth

#
# start the network
sh -c ' . /etc/network.rc '
if [ ! -z "$NORD_IPV4AD" ] ; then ifconfig eth0 $NORD_IPV4AD ; fi
if [ ! -z "$NORD_IPV4GW" ] ; then route add default gw $NORD_IPV4GW ; fi
if [ ! -z "$NORD_IPV6AD" ] ; then ifconfig eth0 inet6 add $NORD_IPV6AD ; fi

#stty -echo # for s390

#
# set a prompt and launch the shell
PS1='nordinst \$' ; export PS1
exec sh -i


