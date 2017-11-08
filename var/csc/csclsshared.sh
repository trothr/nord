#!/bin/sh
#
# this script lists the shared libraries in standard locations
# excluding "allowed" shared libraries (mostly just GLIBC)

for LD in /lib /usr/lib ; do
  if [ ! -d $LD ] ; then continue ; fi
  cd $LD
  for LF in ` ls -d *.so* ` ; do

#    if [ ! -f "$LF" ] ; then continue ; fi

    # a long and growing list of things that might be in the runtime

    if [ "$LD/$LF" = /lib/ld-2.6.1.so ] ; then continue ; fi
    if [ "$LD/$LF" = /lib/ld-linux.so.2 ] ; then continue ; fi
    if [ "$LD/$LF" = /lib/ld-2.12.2.so ] ; then continue ; fi
    if [ "$LD/$LF" = /lib/ld.so.1 ] ; then continue ; fi

    if [ "$LF" = libBrokenLocale-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libBrokenLocale.so.1 ] ; then continue ; fi
    if [ "$LF" = libBrokenLocale.so ] ; then continue ; fi

    if [ "$LF" = libanl-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libanl.so.1 ] ; then continue ; fi
    if [ "$LF" = libanl.so ] ; then continue ; fi

    if [ "$LF" = libc-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libc.so.6 ] ; then continue ; fi

    if [ "$LF" = libcrypt-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libcrypt.so.1 ] ; then continue ; fi
    if [ "$LF" = libcrypt.so ] ; then continue ; fi

    if [ "$LF" = libdl-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libdl.so.2 ] ; then continue ; fi
    if [ "$LF" = libdl.so ] ; then continue ; fi

    if [ "$LF" = libm-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libm.so.6 ] ; then continue ; fi
    if [ "$LF" = libm.so ] ; then continue ; fi

    if [ "$LF" = libnsl-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libnsl.so.1 ] ; then continue ; fi
    if [ "$LF" = libnsl.so ] ; then continue ; fi

    if [ "$LF" = libnss_compat-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libnss_compat.so.2 ] ; then continue ; fi
    if [ "$LF" = libnss_compat.so ] ; then continue ; fi

    if [ "$LF" = libnss_dns-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libnss_dns.so.2 ] ; then continue ; fi
    if [ "$LF" = libnss_dns.so ] ; then continue ; fi

    if [ "$LF" = libnss_files-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libnss_files.so.2 ] ; then continue ; fi
    if [ "$LF" = libnss_files.so ] ; then continue ; fi

    if [ "$LF" = libnss_hesiod-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libnss_hesiod.so.2 ] ; then continue ; fi
    if [ "$LF" = libnss_hesiod.so ] ; then continue ; fi

    if [ "$LF" = libnss_nis-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libnss_nis.so.2 ] ; then continue ; fi
    if [ "$LF" = libnss_nis.so ] ; then continue ; fi

    if [ "$LF" = libnss_nisplus-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libnss_nisplus.so.2 ] ; then continue ; fi
    if [ "$LF" = libnss_nisplus.so ] ; then continue ; fi

    if [ "$LF" = libpthread-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libpthread.so.0 ] ; then continue ; fi

    if [ "$LF" = libresolv-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libresolv.so.2 ] ; then continue ; fi
    if [ "$LF" = libresolv.so ] ; then continue ; fi

    if [ "$LF" = librt-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = librt.so.1 ] ; then continue ; fi
    if [ "$LF" = librt.so ] ; then continue ; fi

    if [ "$LD/$LF" = /lib/libthread_db-1.0.so ] ; then continue ; fi
    if [ "$LD/$LF" = /lib/libthread_db.so.1 ] ; then continue ; fi
    if [ "$LD/$LF" = /lib/libthread_db.so ] ; then continue ; fi
    if [ "$LD/$LF" = /usr/lib/libthread_db.so ] ; then continue ; fi

    if [ "$LF" = libutil-2.6.1.so ] ; then continue ; fi
    if [ "$LF" = libutil.so.1 ] ; then continue ; fi
    if [ "$LF" = libutil.so ] ; then continue ; fi

    if [ "$LD/$LF" = /lib/libSegFault.so ] ; then continue ; fi
    if [ "$LD/$LF" = /lib/libmemusage.so ] ; then continue ; fi
    if [ "$LD/$LF" = /lib/libpcprofile.so ] ; then continue ; fi

    if [ "$LD/$LF" = /usr/lib/libc.so ] ; then continue ; fi
    if [ "$LD/$LF" = /usr/lib/libpthread.so ] ; then continue ; fi
    if [ "$LD/$LF" = /usr/lib/libnss_db.so ] ; then continue ; fi

#    if [ "$LF" = libdevmapper.so.1.02 ] ; then continue ; fi
#    if [ "$LF" = libdevmapper.so ] ; then continue ; fi

# known Portable Apps libraries
    if [ "$LD/$LF" = /usr/lib/libregina.so ] ; then continue ; fi

    echo "$LD/$LF"

  done

done

exit


/lib/libBrokenLocale-2.12.2.so
/lib/libanl-2.12.2.so
/lib/libc-2.12.2.so
/lib/libcidn-2.12.2.so
/lib/libcidn.so.1
/lib/libcrypt-2.12.2.so
/lib/libdl-2.12.2.so
/lib/libm-2.12.2.so
/lib/libnsl-2.12.2.so
/lib/libnss_compat-2.12.2.so
/lib/libnss_dns-2.12.2.so
/lib/libnss_files-2.12.2.so
/lib/libnss_hesiod-2.12.2.so
/lib/libnss_nis-2.12.2.so
/lib/libnss_nisplus-2.12.2.so
/lib/libpthread-2.12.2.so
/lib/libresolv-2.12.2.so
/lib/librt-2.12.2.so
/lib/libutil-2.12.2.so
/usr/lib/libcidn.so
/usr/lib/libvibesimpledyn.so

