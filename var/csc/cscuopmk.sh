#!/bin/sh


cd $1 ; shift

for P in $* ; do
  if [ -h /usr/opt/$P ] ; then continue ; fi
  if [ -d $P ] ; then continue ; fi
  Q=` echo $P | awk -F- '{print $1}' `
  mkdir -p $P
  echo $P $Q
  if [ ! -d $P/arc ] ; then ln -s /arc/$Q $P/arc ; fi
  new -k $P/arc/$P.mak $P/makefile 1> /dev/null 2> /dev/null
  new -k */setup $P/. 1> /dev/null 2> /dev/null
  make -C $P source 1> /dev/null 2> /dev/null
  if [ $? -ne 0 ] ; then continue ; fi
  make -C $P config
  if [ $? -ne 0 ] ; then continue ; fi
  make -C $P
  if [ $? -ne 0 ] ; then continue ; fi
  make -C $P install
  if [ $? -ne 0 ] ; then continue ; fi
  make -C $P distclean
  if [ $? -ne 0 ] ; then continue ; fi
  $P/setup
done






