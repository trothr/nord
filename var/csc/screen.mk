#
#
#	  Name: screen.mk
#		make include file for SCREEN for La Casita
#
#

SC_APN		=	screen
SC_APV		=	4.8.0
SC_VRM		=	$(SC_APN)-$(SC_APV)
SC_ARC		=	tar.gz

#SC_URL	=	 http://mirrors.sunsite.dk/gnu/screen/$(SC_VRM).tar.gz \
#	       http://mirrors.sunsite.dk/gnu/screen/$(SC_VRM).tar.gz.sig
SC_URL		=   http://ftp.gnu.org/pub/gnu/screen/$(SC_VRM).tar.gz \
		  http://ftp.gnu.org/pub/gnu/screen/$(SC_VRM).tar.gz.sig

#SC_FETCH	=	
#SC_SOURCE	=	
#SC_CONFIG	=	./configure --prefix=/usr
#SC_INSTALL	=	
#SC_FIXUP	=	


