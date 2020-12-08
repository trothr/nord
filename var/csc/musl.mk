#
#
#	  Name: musl.mk
#		CSCRATCH make include file for Musl Libc for NORD
#
#

SC_APN		=	musl
SC_APV		=	1.2.1
SC_VRM		=	$(SC_APN)-$(SC_APV)
SC_ARC		=	tar.gz

SC_URL		=	\
	       http://www.musl-libc.org/releases/$(SC_VRM).$(SC_ARC) \
	       http://www.musl-libc.org/releases/$(SC_VRM).$(SC_ARC).asc

#SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).asc
#gpg --keyserver hkp://pool.sks-keyservers.net/ --recv-keys 0x56bcdb593020450f
#gpg --keyid-format long --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).asc

#SC_FETCH	=	
#SC_CONFIG	=	./configure --prefix=/usr --disable-nls
#SC_CONFIG	=	./configure --disable-nls
#SC_CONFIG	=	./configure --disable-nls \
#				--without-selinux --enable-man \
#				--sysconfdir=/etc
SC_CONFIG	=	./configure --prefix=/usr \
					--enable-static --disable-shared
#SC_INSTALL	=	
#SC_FIXUP	=	


