#
#
#	  Name: nano.mk
#		CSCRATCH make include file for NANO (PICO replacement)
#
#

#SC_VRM		=	nano-2.1.9
#SC_VRM		=	nano-2.3.1

SC_APN		=	nano
SC_APV		=	2.4.2
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_URL		=	\
	http://ftp.gnu.org/pub/gnu/nano/$(SC_VRM).tar.gz \
	http://ftp.gnu.org/pub/gnu/nano/$(SC_VRM).tar.gz.sig

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr --disable-nls
#SC_BUILD	=	
#SC_INSTALL	=	
SC_FIXUP	=	strip /usr/bin/nano ; \
			ln -sf nano /usr/bin/pico


