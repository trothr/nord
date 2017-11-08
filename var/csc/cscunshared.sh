#!/bin/sh
#

if [ ! -f /etc/ld.so.conf.full ] ; then
  echo "$0: missing /etc/ld.so.conf.full" ; exit 28 ; fi
if [ ! -f /etc/ld.so.conf.ship ] ; then
  echo "$0: missing /etc/ld.so.conf.ship" ; exit 28 ; fi

cp -p /etc/ld.so.conf.full /etc/ld.so.conf
for LD in /lib /usr/lib ; do
  if [ ! -d $LD ] ; then continue ; fi
  cd $LD
  LFL=""
  for LF in ` ls -d *.so* ` ; do

    if [ ! -f "$LF" ] ; then continue ; fi

    # a long and growing list of things that might be in the runtime

    if [ "$LF" = ld-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = ld-2.3.6.so ] ; then continue ; fi
    if [ "$LF" = ld-linux.so.2 ] ; then continue ; fi

    if [ "$LF" = libBrokenLocale-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libBrokenLocale-2.3.6.so ] ; then continue ; fi
    if [ "$LF" = libBrokenLocale.so.1 ] ; then continue ; fi
    if [ "$LF" = libBrokenLocale.so ] ; then continue ; fi

    if [ "$LF" = libanl-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libanl-2.3.6.so ] ; then continue ; fi
    if [ "$LF" = libanl.so.1 ] ; then continue ; fi
    if [ "$LF" = libanl.so ] ; then continue ; fi

    if [ "$LF" = libc-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libc-2.3.6.so ] ; then continue ; fi
    if [ "$LF" = libc.so.6 ] ; then continue ; fi

    if [ "$LF" = libcrypt-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libcrypt-2.3.6.so ] ; then continue ; fi
    if [ "$LF" = libcrypt.so.1 ] ; then continue ; fi
    if [ "$LF" = libcrypt.so ] ; then continue ; fi

    if [ "$LF" = libdl-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libdl-2.3.6.so ] ; then continue ; fi
    if [ "$LF" = libdl.so.2 ] ; then continue ; fi
    if [ "$LF" = libdl.so ] ; then continue ; fi

    if [ "$LF" = libm-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libm-2.3.6.so ] ; then continue ; fi
    if [ "$LF" = libm.so.6 ] ; then continue ; fi
    if [ "$LF" = libm.so ] ; then continue ; fi

    if [ "$LF" = libnsl-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libnsl-2.3.6.so ] ; then continue ; fi
    if [ "$LF" = libnsl.so.1 ] ; then continue ; fi
    if [ "$LF" = libnsl.so ] ; then continue ; fi

    if [ "$LF" = libnss_compat-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libnss_compat-2.3.6.so ] ; then continue ; fi
    if [ "$LF" = libnss_compat.so.2 ] ; then continue ; fi
    if [ "$LF" = libnss_compat.so ] ; then continue ; fi

    if [ "$LF" = libnss_dns-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libnss_dns-2.3.6.so ] ; then continue ; fi
    if [ "$LF" = libnss_dns.so.2 ] ; then continue ; fi
    if [ "$LF" = libnss_dns.so ] ; then continue ; fi

    if [ "$LF" = libnss_files-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libnss_files-2.3.6.so ] ; then continue ; fi
    if [ "$LF" = libnss_files.so.2 ] ; then continue ; fi
    if [ "$LF" = libnss_files.so ] ; then continue ; fi

    if [ "$LF" = libnss_hesiod-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libnss_hesiod-2.3.6.so ] ; then continue ; fi
    if [ "$LF" = libnss_hesiod.so.2 ] ; then continue ; fi
    if [ "$LF" = libnss_hesiod.so ] ; then continue ; fi

    if [ "$LF" = libnss_nis-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libnss_nis-2.3.6.so ] ; then continue ; fi
    if [ "$LF" = libnss_nis.so.2 ] ; then continue ; fi
    if [ "$LF" = libnss_nis.so ] ; then continue ; fi

    if [ "$LF" = libnss_nisplus-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libnss_nisplus-2.3.6.so ] ; then continue ; fi
    if [ "$LF" = libnss_nisplus.so.2 ] ; then continue ; fi
    if [ "$LF" = libnss_nisplus.so ] ; then continue ; fi

    if [ "$LF" = libpthread-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libpthread-2.3.6.so ] ; then continue ; fi
    if [ "$LF" = libpthread.so.0 ] ; then continue ; fi

    if [ "$LF" = libresolv-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libresolv-2.3.6.so ] ; then continue ; fi
    if [ "$LF" = libresolv.so.2 ] ; then continue ; fi
    if [ "$LF" = libresolv.so ] ; then continue ; fi

    if [ "$LF" = librt-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = librt-2.3.6.so ] ; then continue ; fi
    if [ "$LF" = librt.so.1 ] ; then continue ; fi
    if [ "$LF" = librt.so ] ; then continue ; fi

    if [ "$LF" = libthread_db-1.0.so ] ; then continue ; fi
    if [ "$LF" = libthread_db.so.1 ] ; then continue ; fi
    if [ "$LF" = libthread_db.so ] ; then continue ; fi

    if [ "$LF" = libutil-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libutil-2.3.6.so ] ; then continue ; fi
    if [ "$LF" = libutil.so.1 ] ; then continue ; fi
    if [ "$LF" = libutil.so ] ; then continue ; fi

    if [ "$LF" = libSegFault.so ] ; then continue ; fi

    if [ "$LF" = libpcprofile.so ] ; then continue ; fi

    if [ "$LF" = libmemusage.so ] ; then continue ; fi

    if [ "$LF" = libnss_db.so ] ; then continue ; fi

    if [ "$LF" = libc.so ] ; then continue ; fi

    if [ "$LF" = libpthread.so ] ; then continue ; fi

    if [ "$LF" = libdevmapper.so.1.02 ] ; then continue ; fi
    if [ "$LF" = libdevmapper.so ] ; then continue ; fi

    LFL="$LFL $LF"
  done

  mv $LFL /tmp/lib/.
  ldconfig
  echo "# cleared out $LD"
done
cp -p /etc/ld.so.conf.ship /etc/ld.so.conf


exit
exit
exit
exit
exit


