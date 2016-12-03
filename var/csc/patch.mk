#
#
#	  Name: patch.mk
#		CSCRATCH make include file for Patch for NORD
#
#

SC_APN		=	patch
SC_APV		=	2.7.5
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)

#SC_URL		=	ftp://ftp.gnu.org/pub/gnu/patch/$(SC_VRM).tar.gz
#SC_URL		=	http://ftp.gnu.org/gnu/patch/$(SC_VRM).tar.gz
#SC_URL          =       \
#	http://alpha.gnu.org/pub/gnu/diffutils/$(SC_VRM).tar.gz \
#	http://alpha.gnu.org/pub/gnu/diffutils/$(SC_VRM).tar.gz.sig
# ... right there alongside "diffutils" - THAT's intuitive
SC_URL		=	http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
			http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0xc4c927cd5d1b36d7

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr
#SC_BUILD	=	
SC_FIXUP	=	strip /usr/bin/patch
#SC_INSTALL	=	


