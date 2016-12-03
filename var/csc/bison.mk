#
#
#	  Name: bison.mk
#		CSCRATCH make include file for BISON for NORD
#
#

SC_APN		=	bison
SC_APV		=	3.0.4
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_URL		=	\
	http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
	http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0x0ddcaa3278d5264e

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr --disable-nls
#SC_BUILD	=	
SC_FIXUP	=	strip /usr/bin/bison
#SC_INSTALL	=	

