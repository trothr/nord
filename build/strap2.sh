#!/bin/sh
#
# this stage drives the CSCRATCH package builds

D=`dirname $0`
. $D/strap.rc
$D/strap1.sh # which in turn [re]runs 'strap0.sh'
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
    tar xzf ../../arc/linux/$KERNEL_HEADERS_VERSION.tar.gz ; \
    ln -s $KERNEL_HEADERS_VERSION linux " ; fi
. ./strap.set
chroot . sh -c " cd usr/src/linux ; yes '' | make config "
chroot . sh -c " cd usr/src/linux ; make include/linux/version.h "

mkdir -p usr/include/linux
rsync -a -u -x -H -K -O -S usr/src/linux/include/linux/. \
				     usr/include/linux/.

mkdir -p usr/include/asm-generic
rsync -a -u -x -H -K -O -S usr/src/linux/include/asm-generic/. \
				     usr/include/asm-generic/.

mkdir -p usr/include/asm-$UNAMEM
rsync -a -u -x -H -K -O -S usr/src/linux/include/asm-$UNAMEM/. \
				     usr/include/asm-$UNAMEM/.

# create /usr/include/asm
rm -f usr/include/asm
ln -s asm-$UNAMEM usr/include/asm

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


