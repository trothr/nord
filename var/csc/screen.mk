#
#
#	  Name: screen.mk
#		make include file for SCREEN for La Casita
#         Date: 2023-04-24 (Monday) and prior
#
#

SC_APN		=	screen
#SC_APV		=	4.6.2
SC_APV		=	4.8.0
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)

#SC_URL	=	 http://mirrors.sunsite.dk/gnu/screen/$(SC_VRM).tar.gz \
#	       http://mirrors.sunsite.dk/gnu/screen/$(SC_VRM).tar.gz.sig
SC_URL		=   http://ftp.gnu.org/pub/gnu/screen/$(SC_VRM).tar.gz \
		  http://ftp.gnu.org/pub/gnu/screen/$(SC_VRM).tar.gz.sig

#SC_FETCH	=	
#SC_SOURCE	=	
#SC_CONFIG	=	./configure --prefix=/usr
#SC_BUILD	=	
#SC_INSTALL	=	
#SC_FIXUP	=	


