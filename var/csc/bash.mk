#
#
#	  Name: bash.mk
#		CSCRATCH make include file for BASH for NORD
#
#

SC_APN		=	bash
SC_APV		=	4.3.30
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


