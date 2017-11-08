#
#
#	  Name: zlib.mk
#		CSCRATCH make include file for ZLIB for NORD
#
#

SC_APN		=	zlib
#SC_APV		=	1.2.8
SC_APV		=	1.2.11
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)

#SC_URL		=	ftp://swrinde.nde.swri.edu/pub/png/src/$(SC_VRM).$(SC_ARC)
SC_URL		=	http://www.zlib.net/$(SC_VRM).$(SC_ARC)

#SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0xnnnnnnnnnnnnnnnn

#SC_FETCH	=	
#SC_SOURCE	=	
#SC_CONFIG	=	./configure --prefix=/usr
SC_CONFIG	=	./configure --prefix=/usr --static
#SC_BUILD	=	
#SC_INSTALL	=	
#SC_FIXUP	=	strip ...


