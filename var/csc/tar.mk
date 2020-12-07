#
#
#	  Name: tar.mk
#		CSCRATCH make include file for GNU TAR for NORD
								
#		This was back-level to 1.22 due to
#		file ownership oddness with the 1.26 release.
#
#

SC_APN		=	tar
#SC_APV		=	1.22
#SC_APV		=	1.26
SC_APV		=	1.32
#SC_ARC		=	tar.xz
SC_ARC		=	tar.bz2
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_URL		=	http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
			http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0x3602b07f55d0c732

#SC_FETCH	=	
#SC_SOURCE	=	
#SC_CONFIG	=	./configure --prefix=/usr --disable-nls
SC_CONFIG	=	FORCE_UNSAFE_CONFIGURE=1 ; \
			export FORCE_UNSAFE_CONFIGURE ; \
			./configure --prefix=/usr --disable-nls
SC_FIXUP	=	strip /usr/bin/tar /usr/libexec/rmt
#SC_INSTALL	=	


