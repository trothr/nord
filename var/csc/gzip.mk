#
#
#	  Name: gzip.mk
#		CSCRATCH make include file for GZIP for NORD
#         Date: 2023-04-24 (Monday) and prior
#
#

SC_APN		=	gzip
#SC_APV		=	1.9
#SC_APV		=	1.10
SC_APV		=	1.12
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_URL		=	http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
			http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0x7fd9fccb000beeee

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr
#SC_BUILD	=	
SC_FIXUP	=	strip /usr/bin/gzip
#SC_INSTALL	=	

# http://freshmeat.net/projects/gzip/
# ftp://ftp.linuxfromscratch.org/lfs-packages/cvs/gzip-1.2.4b.patch
# http://downloads.linuxfromscratch.org/gzip-1.2.4b.patch


