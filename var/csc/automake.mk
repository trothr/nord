#
#
#	  Name: automake.mk
#		CSCRATCH make include file for AUTOMAKE for NORD
#         Date: 2023-04-24 (Monday) and prior
#
#

SC_APN		=	automake
#SC_APV		=	1.15
#SC_APV		=	1.16.1
#SC_APV		=	1.16.2
SC_APV		=	1.16.5
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_URL		=	\
	http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
	http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0x60f906016e407573

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr
#SC_BUILD	=	
SC_FIXUP	=	test -x /usr/bin/automake
#SC_INSTALL	=	

SC_REQ		=	autoconf


