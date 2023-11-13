#
#
#	  Name: bash.mk
#		CSCRATCH make include file for BASH for NORD
#         Date: 2023-04-24 (Monday) and prior
#
#

SC_APN		=	bash
#SC_APV		=	5.0
#SC_APV		=	5.1.8
SC_APV		=	5.2.15
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_URL		=	\
	http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
	http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0xbb5869f064ea74ab

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr --disable-nls \
						--without-bash-malloc
#						--disable-gettext

#SC_BUILD	=	
SC_FIXUP	=	strip /usr/bin/bash
#SC_INSTALL	=	


