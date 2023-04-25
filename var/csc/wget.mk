#
#
#	  Name: wget.mk
#		CSCRATCH make include file for WGET for NORD
#         Date: 2023-04-24 (Monday) and prior
#
#

SC_APN		=	wget
#SC_APV		=	1.19.5
#SC_APV		=	1.20.3
SC_APV		=	1.21.3
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_URL		=	http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
			http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0x263d6df2e163e1ea

#SC_FETCH	=	
#SC_SOURCE	=	

SC_CONFIG	=	./configure --prefix=/usr --disable-nls \
						--sysconfdir=/etc \
	--with-ssl=openssl --with-openssl=/usr/opt/openssl LIBS=-lrt
#unrecognized options: --enable-static, --disable-shared
#				--with-libssl-prefix=/usr/opt/openssl

#SC_BUILD	=	
#SC_INSTALL	=	
SC_FIXUP	=	strip /usr/bin/wget


