#!/bin/sh
#
#         Name: strap0.sh
#               This stage [re]creates the filesystem layout.
#               It must tolerate portions already existing
#               (in case of restart).
#

D=`dirname $0`
if [ ! -r $D/strap.rc ] ; then
  echo "missing '$D/strap.rc' config file" 1>&2 ; exit 1 ; fi
. $D/strap.rc
echo "strap0.sh: SYSTEM=$SYSTEM"

if [ ! -d etc ] ; then
  echo "missing 'etc' starter directory" 1>&2 ; exit 1 ; fi

mkdir -p "$SYSTEM"

cd "$SYSTEM"

echo "strap0.sh: creating filesystem hierarchy for '$SYSTEM' ..."

mkdir -m 1777 -p tmp
mkdir -m 555 -p proc sys mnt
mkdir -m 755 -p home local arc
mkdir -m 755 -p dev ; mkdir -m 555 -p dev/pts ; mkdir -m 1777 -p dev/shm
mkdir -m 755 -p lib bin sbin usr boot
#sync ; sleep 1

mkdir -m 755 -p usr/bin usr/lib usr/libexec usr/include usr/sbin usr/src
mkdir -m 755 -p usr/share usr/share/man usr/share/info
ln -sf share/man share/info /var/spool usr/.
#sync ; sleep 1

mkdir -m 755 -p opt etc var srv
#sync ; sleep 1
mkdir -m 755 -p var/run var/log var/spool
#sync ; sleep 1
touch var/run/utmp var/log/wtmp
mkdir -m 700 -p root
mkdir -m 555 -p misc media cdrom
#sync ; sleep 1

if [ ! -r etc/mtab ] ; then echo "/ / chroot rw 0 0" > etc/mtab ; fi
if [ ! -r etc/passwd ] ; then cp -p ../etc/passwd etc/. ; fi
if [ ! -r etc/group ] ; then cp -p ../etc/group etc/. ; fi
if [ ! -r etc/resolv.conf ] ; then cp -p /etc/resolv.conf etc/. ; fi

if [ ! -r dev/null ] ; then mknod -m 666 dev/null c 1 3 ; fi
if [ ! -r dev/random ] ; then mknod -m 666 dev/random c 1 8 ; fi
if [ ! -r dev/urandom ] ; then mknod -m 666 dev/urandom c 1 9 ; fi

exit


