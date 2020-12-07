#
#
#	  Name: nano.mk
#		CSCRATCH make include file for NANO (PICO replacement)
#
#

SC_APN		=	nano
SC_APV		=	4.9.2
SC_ARC		=	tar.xz
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_URL		=	\
	http://ftp.gnu.org/pub/gnu/nano/$(SC_VRM).$(SC_ARC) \
	http://ftp.gnu.org/pub/gnu/nano/$(SC_VRM).$(SC_ARC).sig

#SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
#gpg --keyserver hkp://pool.sks-keyservers.net/ --recv-keys 0x0d28d4d2a0ace884

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr --disable-nls
#SC_INSTALL	=	
SC_FIXUP	=	strip /usr/bin/nano ; \
			ln -sf nano /usr/bin/pico


