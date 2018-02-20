#!/bin/sh
#
#         Name: strap2.sh
#               This stage drives the CSCRATCH package builds.
#

D=`dirname $0`
. $D/strap.rc
$D/strap1.sh # which in turn [re]runs 'strap0.sh'
RC=$? ; if [ $RC -ne 0 ] ; then exit $RC ; fi
echo "strap2.sh: SYSTEM=$SYSTEM"

cd "$SYSTEM"

echo "strap2.sh: setting up '$SYSTEM' for CSCRATCH ..."

mkdir -p var/csc
if [ ! -f var/csc/makefile ] ; then
  wget -P var/csc http://www.casita.net/pub/csc/makefile ; fi
if [ ! -f var/csc/cscpatch.sh ] ; then
  wget -P var/csc http://www.casita.net/pub/csc/cscpatch.sh
  chmod a+rx var/csc/cscpatch.sh ; fi

# populate /usr/src/linux
if [ ! -d usr/src/linux ] ; then
  sh -c " cd usr/src ; rm -f linux ; \
    tar xJf ../../arc/linux/$KERNEL_HEADERS_VERSION.tar.xz ; \
    ln -s $KERNEL_HEADERS_VERSION linux " ; fi

rm -f usr/include/linux
#ln -s /usr/src/linux/include/linux usr/include/.
rm -f usr/include/asm-generic
#ln -s /usr/src/linux/include/asm-generic usr/include/.
rm -f usr/include/asm-$UNAMEM
#ln -s /usr/src/linux/include/asm-$UNAMEM usr/include/.
rm -f usr/include/asm
#ln -s asm-$UNAMEM usr/include/asm

rsync -a -u -x -H -O -S /usr/include/. usr/include/.

. ./strap.set
#OK#chroot . sh -c " cd usr/src/linux ; yes '' | make config "
#        sh -c " cd usr/src/linux ; yes '' | make config "
RC=$? ; if [ $RC -ne 0 ] ; then exit $RC ; fi
#OK#chroot . sh -c " cd usr/src/linux ; make include/linux/version.h "
#        sh -c " cd usr/src/linux ; make include/linux/version.h "
RC=$? ; if [ $RC -ne 0 ] ; then exit $RC ; fi
#OK#chroot . sh -c " cd usr/src/linux ; make headers_install "
RC=$? ; if [ $RC -ne 0 ] ; then exit $RC ; fi

#mkdir -p usr/include/linux
#rsync -a -u -x -H -K -O -S usr/src/linux/include/linux/. \
#				     usr/include/linux/.
#RC=$? ; if [ $RC -ne 0 ] ; then exit $RC ; fi

#mkdir -p usr/include/asm-generic
#rsync -a -u -x -H -K -O -S usr/src/linux/include/asm-generic/. \
#				     usr/include/asm-generic/.
#RC=$? ; if [ $RC -ne 0 ] ; then exit $RC ; fi

#mkdir -p usr/include/asm-$UNAMEM
#rsync -a -u -x -H -K -O -S usr/src/linux/include/asm-$UNAMEM/. \
#				     usr/include/asm-$UNAMEM/.
#RC=$? ; if [ $RC -ne 0 ] ; then exit $RC ; fi

## create /usr/include/asm
#rm -f usr/include/asm
#ln -s asm-$UNAMEM usr/include/asm
#RC=$? ; if [ $RC -ne 0 ] ; then exit $RC ; fi

# set-up the environment
. ./strap.set
LD_LIBRARY_PATH=/usr/opt/gcc/lib ; export LD_LIBRARY_PATH

# now [re]build CD0 packages
echo "strap2.sh: running CSCRATCH for '$SYSTEM' (may take a while) ..."
for P in ` ls opt/CD0 | grep '.-.' \
    | awk -F- '{print $1}' | uniq | grep -v wget ` ; do
  chroot . sh -c " cd /var/csc ; exec make $P.ins " ; RC=$?
  if [ "$RC" -eq 0 ] ; then rm var/opt/$P var/opt/$P-* ; fi
done
echo "strap2.sh: done"

exit


