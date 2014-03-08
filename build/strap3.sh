#!/bin/sh
#

for P in ` ls /usr/opt/. | grep -v '.-.' \
    | grep -v '^apache$' \
    | grep -v '^mpc$' | grep -v '^gmp$' | grep -v '^mpfr$' \
    | grep -v '^tor$' \
    | grep -v '^rxdiagrc$' ` ; do
  echo $P
  for D in bin sbin lib ; do
    if [ -d /usr/opt/$P/$D ] ; then
      ln -s /usr/opt/$P/$D/* /usr/$D/. ; fi
  done
done


exit
exit
exit
exit
exit


make utillinux.ins
make e2fsprogs.ins
make shadow.ins
make sudo.ins
make sysklogd.ins
make procps.ins
make sysvinit.ins

exit

make nano.ins


