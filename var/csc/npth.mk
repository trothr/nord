#
#
#	  Name: npth.mk
#		make include file for New Portable Threads for CSCRATCH
#
#

SC_APN		=	npth
SC_APV		=	1.6
SC_VRM		=	$(APPLID)-$(SC_APV)
SC_ARC		=	tar.bz2

SC_URL		=	\
	 ftp://ftp.gnupg.org/gcrypt/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
	 ftp://ftp.gnupg.org/gcrypt/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
#gpg --keyserver hkp://pool.sks-keyservers.net/ --recv-keys 0x249b39d24f25e3b6

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr --disable-nls \
				--disable-shared --enable-static
#SC_FIXUP	=	strip ...
#SC_INSTALL	=	


