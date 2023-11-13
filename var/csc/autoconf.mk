#
#
#	  Name: autoconf.mk
#		CSCRATCH make include file for AUTOCONF for NORD
#         Date: 2023-04-24 (Monday) and prior
#
#

SC_APN		=	autoconf
#SC_APV		=	2.69
SC_APV		=	2.71
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_URL		=	\
	http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
	http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).tar.gz.sig
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0xa7a16b4a2527436a

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr
#SC_BUILD	=	
SC_FIXUP	=	test -x /usr/bin/autoconf
#SC_INSTALL	=	


