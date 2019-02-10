#
#
#	  Name: nano.mk
#		CSCRATCH make include file for NANO (PICO replacement)
#
#

SC_APN		=	nano
#SC_APV		=	2.8.6
SC_APV		=	3.2
SC_ARC		=	tar.xz
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_URL		=	\
	http://ftp.gnu.org/pub/gnu/nano/$(SC_VRM).$(SC_ARC) \
	http://ftp.gnu.org/pub/gnu/nano/$(SC_VRM).$(SC_ARC).sig

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr --disable-nls
#SC_BUILD	=	
#SC_INSTALL	=	
SC_FIXUP	=	strip /usr/bin/nano ; \
			ln -sf nano /usr/bin/pico


