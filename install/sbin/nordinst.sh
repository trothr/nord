#!/bin/sh
#
#         Name: nordinst.sh (shell script)
#               This script serves in place of INIT for installing NORD.
#               The system in which it runs may have minimal support.
#               It is expected that there will be additional scripts
#               to carry out installation tasks.
#

#
# set command search
PATH=/usr/sbin:/sbin:/usr/bin:/bin ; export PATH

#
# mount some crucial things
mount -t proc proc /proc
mount -t sysfs sys /sys
mount -t tmpfs tmpfs /tmp

#
# source platform-specific stuff
ARCH=`uname -m | sed 's#^i.86$#i386#' | sed 's#^armv.l$#arm#'`
if [ -r /etc/$ARCH.rc ] ; then . /etc/$ARCH.rc ; fi
case $ARCH in
  s390*)
    stty -echo # when on s390 we presume hardware console echo
    ;;
esac

#
# extract installation settings from boot parm string
cat /proc/cmdline | xargs -n 1 | grep '^NORD' > /tmp/nordinst.set
. /tmp/nordinst.set

#
# conditionally set the hostname
hostname nordinst
if [ ! -z "$NORD_HOSTNAME" ] ; then hostname $NORD_HOSTNAME ; fi

#
# start the network
sh -c ' . /etc/network.rc '
if [ ! -z "$NORD_IPV4AD" ] ; then ifconfig eth0 $NORD_IPV4AD ; fi
if [ ! -z "$NORD_IPV4GW" ] ; then route add default gw $NORD_IPV4GW ; fi
if [ ! -z "$NORD_IPV6AD" ] ; then ifconfig eth0 inet6 add $NORD_IPV6AD ; fi

#
# set a prompt and launch the shell
PS1='nordinst \$ ' ; export PS1
exec sh -i 0< /dev/console 1> /dev/console 2> /dev/console


