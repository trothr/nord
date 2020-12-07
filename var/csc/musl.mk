#
#
#	  Name: musl.mk
#		CSCRATCH make include file for Musl Libc for NORD
#
#

SC_APN		=	musl
SC_APV		=	1.2.1
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_URL		=	\
		http://www.musl-libc.org/releases/$(SC_VRM).$(SC_ARC) \
		http://www.musl-libc.org/releases/$(SC_VRM).$(SC_ARC).asc

#SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).asc
#gpg --keyserver hkp://pool.sks-keyservers.net/ --recv-keys 0x56bcdb593020450f

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr \
					--enable-static --disable-shared

#SC_BUILD	=	
#SC_FIXUP	=	strip ...
#SC_INSTALL	=	


