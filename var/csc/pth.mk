#
#
#	  Name: pth.mk
#		make include file for GNU Portable Threads for NORD
#
#

SC_APN		=	pth
SC_APV		=	2.0.7
SC_VRM		=	$(SC_APN)-$(SC_APV)
SC_ARC		=	tar.gz

SC_URL	=	 ftp://ftp.gnu.org/gnu/$(SC_VRM)/$(SC_VRM).$(SC_ARC) \
		 ftp://ftp.gnu.org/gnu/$(SC_VRM)/$(SC_VRM).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
#gpg --keyserver hkp://pool.sks-keyservers.net/ --recv-keys 0x6e744acba9c09e30

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr \
				--disable-nls --with-included-zlib \
				--disable-shared --enable-static
#SC_FIXUP	=	strip ...
#SC_INSTALL	=	


