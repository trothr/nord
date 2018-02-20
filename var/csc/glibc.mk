#
#
#	  Name: glibc.mk
#		CSCRATCH make include file for GLIBC for La Casita
#
#

SC_APN		=	glibc
#SC_APV		=	2.6.1
#SC_APV		=	2.12.2
SC_APV		=	2.14.1
#SC_APV		=	2.18
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)
SC_URL		=	$(SC_US1)/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
			$(SC_US1)/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
#SC_URL		=	\
#	http://ftp.gnu.org/pub/gnu/glibc/glibc-2.1.3.tar.gz \
#	http://ftp.gnu.org/pub/gnu/glibc/glibc-crypt-2.1.tar.gz \
#	http://ftp.gnu.org/pub/gnu/glibc/glibc-linuxthreads-2.1.3.tar.gz
#SC_URL		=	\
#	http://ftp.gnu.org/pub/gnu/glibc/glibc-2.2.3.tar.gz \
#	http://ftp.gnu.org/pub/gnu/glibc/glibc-linuxthreads-2.2.3.tar.gz
#SC_URL		=	\
#	http://ftp.gnu.org/pub/gnu/glibc/glibc-2.3.3.tar.gz \
#	http://ftp.gnu.org/pub/gnu/glibc/glibc-linuxthreads-2.3.3.tar.gz
#C_URL		=      http://ftp.gnu.org/pub/gnu/glibc/$(SC_VRM).tar.gz
#SC_FETCH	=	wget $(SC_URL) ; \
#			tar xzf glibc-2.2.3.tar.gz ; \
#			     rm glibc-2.2.3.tar.gz ; \
#			tar xzf glibc-linuxthreads-2.2.3.tar.gz ; \
#			     rm glibc-linuxthreads-2.2.3.tar.gz ; \
#		mv linuxthreads linuxthreads_db glibc-2.2.3/. ; \
#			tar czf glibc-2.2.3.tar.gz glibc-2.2.3/. ; \
#					     rm -r glibc-2.2.3

#SC_FETCH	=	wget $(SC_URL) ; \
#					  tar xzf glibc-2.2.3.tar.gz ; \
#			     tar xzf glibc-linuxthreads-2.2.3.tar.gz ; \
#		       mv linuxthreads linuxthreads_db glibc-2.2.3/. ; \
#					 mv glibc-2.2.3 glibc-2.2.3c ; \
#			  tar czf glibc-2.2.3c.tar.gz glibc-2.2.3c/. ; \
#						  rm -r glibc-2.2.3c

#SC_FETCH	=	wget $(SC_URL) ; \
#					  tar xzf glibc-2.3.2.tar.gz ; \
#			     tar xzf glibc-linuxthreads-2.3.2.tar.gz ; \
#		       mv linuxthreads linuxthreads_db glibc-2.3.2/. ; \
#					 mv glibc-2.3.2 glibc-2.3.2c ; \
#			  tar czf glibc-2.3.2c.tar.gz glibc-2.3.2c/. ; \
#						  rm -r glibc-2.3.2c

### latest ###
#SC_FETCH	=	wget $(SC_URL) ; \
#					  tar xzf glibc-2.3.3.tar.gz ; \
#			     tar xzf glibc-linuxthreads-2.3.3.tar.gz ; \
#		       mv linuxthreads linuxthreads_db glibc-2.3.3/. ; \
#					 mv glibc-2.3.3 glibc-2.3.3c ; \
#			  tar czf glibc-2.3.3c.tar.gz glibc-2.3.3c/. ; \
#						  rm -r glibc-2.3.3c

#SC_SOURCE	=	
SC_BUILDD	=	$(SC_SOURCE)/_build

SC_CONFIG	=	../configure --prefix=/usr --disable-nls
#				--build=i686-pc-linux-gnu
#				--enable-add-ons=linuxthreads
#				--enable-add-ons=linuxthreads,crypt
#SC_BUILD	=	
#SC_INSTALL	=	
#SC_FIXUP	=	/sbin/ldconfig
SC_FIXUP	=	strip /sbin/sln

#
#    Note that `/usr/include/net' and `/usr/include/scsi' should *not* be
# symlinks into the kernel sources.  GNU libc provides its own versions
# of these files.
#
#    Linux expects some components of the libc installation to be in
# `/lib' and some in `/usr/lib'.  This is handled automatically if you
# configure glibc with `--prefix=/usr'.  If you set some other prefix or
# allow it to default to `/usr/local', then all the components are
# installed there.
#


# 2.3.1 http://freshmeat.net/projects/glibc/
# http://downloads.linuxfromscratch.org/glibc-2.3.1-root-perl.patch
# http://downloads.linuxfromscratch.org/glibc-2.3.1-libnss.patch
# ttp://freshmeat.net/projects/glibc/
#SC_VRM		=	glibc-2.3.2

# NOTE: glibc-2.6 requires binutils-2.18.50.0.3 for i386 (no higher)




