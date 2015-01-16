#!/bin/sh
#
# This stage leverages /usr/opt packages.
# It may replace prior /usr/opt content in the target hierarchy.

D=`dirname $0`
. $D/strap.rc
$D/strap0.sh ### [re]run stage 0
echo "strap1.sh: SYSTEM=$SYSTEM"

if [ ! -d opt ] ; then
  echo "missing 'opt' starter directory" 1>&2 ; exit 1 ; fi
if [ ! -d opt/CD0 ] ; then
  echo "missing 'opt/CD0' starter directory" 1>&2 ; exit 1 ; fi
if [ ! -d opt/CD1 ] ; then
  echo "missing 'opt/CD1' starter directory" 1>&2 ; exit 1 ; fi
if [ ! -d opt/CD2 ] ; then
  echo "missing 'opt/CD2' starter directory" 1>&2 ; exit 1 ; fi

cd "$SYSTEM"

echo "strap1.sh: populating 'root-strap' support ..."

case $UNAMEM in 
  x86_64|s390x)
    LIB=lib64
    ;;
  *)
    LIB=lib
    ;;
esac
mkdir -p $LIB usr/$LIB

rm -rf usr/opt var/opt
mkdir -m 1777 var/opt
ln -s /var/opt usr/.

cat /dev/null > etc/ld.so.conf
echo "PATH=/usr/sbin:/sbin:/usr/bin:/bin" > strap.set

### CD0 packages ###
mkdir -m 555 -p opt/CD0
umount opt/CD0 2> /dev/null
mount -o bind ../opt/CD0 opt/CD0
for P in ` ls ../opt/CD0 ` ; do

  if [ -d ../opt/CD0/$P/$SYSTEM \
       -a ! -d opt/CD0/$P/$SYSTEM ] ; then
    mkdir -p opt/CD0/$P/$SYSTEM
    rsync -a -u -x -H -K -O -S \
      ../opt/CD0/$P/$SYSTEM/. opt/CD0/$P/$SYSTEM/. ; fi

  if [ ! -d opt/CD0/$P/$SYSTEM ] ; then continue ; fi

  rm -f var/opt/$P
  ln -s /opt/CD0/$P/$SYSTEM var/opt/$P
  PL=`echo $P | awk -F- '{print $1}'`
  rm -f var/opt/$PL
  ln -s $P var/opt/$PL

  if [ "$PL" = "bash" ] ; then
    rm -f bin/sh
    cp -p opt/CD0/$P/$SYSTEM/bin/bash bin/sh ; fi

  if [ "$PL" = "coreutils" ] ; then
    rm -f bin/pwd
    cp -p opt/CD0/$P/$SYSTEM/bin/pwd bin/. ; fi

  if [ "$PL" = "glibc" ] ; then
#    rm -rf usr/include
    mkdir -p usr/include
    rsync -a -u -x -H -K -O -S opt/CD0/$P/$SYSTEM/include/. usr/include/.
#    rm -f usr/include/asm
#    ln -sf "asm-$UNAMEM" usr/include/asm
  fi

  if [ -d opt/CD0/$P/$SYSTEM/lib ] ; then
    echo /usr/opt/$PL/lib >> etc/ld.so.conf
    mkdir -p tmp/lib
    rsync -a -u -x -H -K -O -S opt/CD0/$P/$SYSTEM/lib/. tmp/lib/.
#    mv tmp/lib/*.a usr/lib/. 2> /dev/null
    mv tmp/lib/*.a usr/$LIB/. 2> /dev/null
#    mv tmp/lib/*.o usr/lib/. 2> /dev/null
    mv tmp/lib/*.o usr/$LIB/. 2> /dev/null
#    mv tmp/lib/ld*so* lib/. 2> /dev/null
    mv tmp/lib/ld*so* $LIB/. 2> /dev/null
#    rm -rf tmp/lib
  fi

  if [ -d opt/CD0/$P/$SYSTEM/bin ] ; then
    echo "PATH=\$PATH:/usr/opt/$PL/bin" >> strap.set ; fi
  if [ -d opt/CD0/$P/$SYSTEM/sbin ] ; then
    echo "PATH=\$PATH:/usr/opt/$PL/sbin" >> strap.set ; fi
done

### CD1 packages ###
mkdir -m 555 -p opt/CD1
umount opt/CD1 2> /dev/null
mount -o bind ../opt/CD1 opt/CD1
for P in ` ls ../opt/CD1 ` ; do

  if [ -d ../opt/CD1/$P/$SYSTEM \
       -a ! -d opt/CD1/$P/$SYSTEM ] ; then
    mkdir -p opt/CD1/$P/$SYSTEM
    rsync -a -u -x -H -K -O -S \
      ../opt/CD1/$P/$SYSTEM/. opt/CD1/$P/$SYSTEM/. ; fi

  if [ ! -d opt/CD1/$P/$SYSTEM ] ; then continue ; fi

  rm -f var/opt/$P
  ln -s /opt/CD1/$P/$SYSTEM var/opt/$P
  PL=`echo $P | awk -F- '{print $1}'`
  rm -f var/opt/$PL
  ln -s $P var/opt/$PL

  if [ -d opt/CD1/$P/$SYSTEM/lib ] ; then
    echo /usr/opt/$PL/lib >> etc/ld.so.conf ; fi

  if [ -d opt/CD1/$P/$SYSTEM/bin ] ; then
    echo "PATH=\$PATH:/usr/opt/$PL/bin" >> strap.set ; fi
  if [ -d opt/CD1/$P/$SYSTEM/sbin ] ; then
    echo "PATH=\$PATH:/usr/opt/$PL/sbin" >> strap.set ; fi
done

### CD2 packages ###
mkdir -m 555 -p opt/CD2
umount opt/CD2 2> /dev/null
mount -o bind ../opt/CD2 opt/CD2
for P in ` ls ../opt/CD2 ` ; do

  if [ -d ../opt/CD2/$P/$SYSTEM \
       -a ! -d opt/CD2/$P/$SYSTEM ] ; then
    mkdir -p opt/CD2/$P/$SYSTEM
    rsync -a -u -x -H -K -O -S \
      ../opt/CD2/$P/$SYSTEM/. opt/CD2/$P/$SYSTEM/. ; fi

  if [ ! -d opt/CD2/$P/$SYSTEM ] ; then continue ; fi

  rm -f var/opt/$P
  ln -s /opt/CD2/$P/$SYSTEM var/opt/$P
  PL=`echo $P | awk -F- '{print $1}'`
  rm -f var/opt/$PL
  ln -s $P var/opt/$PL

  if [ -d opt/CD2/$P/$SYSTEM/lib ] ; then
    echo /usr/opt/$PL/lib >> etc/ld.so.conf ; fi

  if [ -d opt/CD2/$P/$SYSTEM/bin ] ; then
    echo "PATH=\$PATH:/usr/opt/$PL/bin" >> strap.set ; fi
  if [ -d opt/CD2/$P/$SYSTEM/sbin ] ; then
    echo "PATH=\$PATH:/usr/opt/$PL/sbin" >> strap.set ; fi
done

mkdir -m 555 -p arc
mount -o bind ../arc arc


echo "export PATH" >> strap.set


if [ ! -x lib/cpp -a ! -h lib/cpp ] ; then
  ln -s /usr/opt/gcc/bin/cpp lib/. ; fi

if [ -d usr/src -a -d ../Linux/usr/src ] ; then
  rsync -a -u -x -H -K -O -S ../Linux/usr/src/. usr/src/. ; fi

echo "/tmp/lib" >> etc/ld.so.conf
. ./strap.set
chroot . ldconfig -f /etc/ld.so.conf -C /etc/ld.so.cache
#cat /dev/null > etc/ld.so.conf

#chroot . sh -c " echo 'you are in a CHROOT shell' ; exec sh "
echo "strap1.sh: testing CHROOT ..."
chroot . sh -c " echo 'CHROOT shell works!' "

exit


