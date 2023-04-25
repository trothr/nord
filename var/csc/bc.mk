#
#
#	  Name: bc.mk
#		CSCRATCH make include file for BC for La Casita
#         Date: 2023-04-24 (Monday) and prior
#
#

SC_APN		=	bc
SC_APV		=	2.1.3
#SC_APV		=	1.07.1
SC_VRM		=	$(SC_APN)-$(SC_APV)
SC_ARC		=	tar.gz
SC_URL		=	http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
			http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr --disable-nls
#SC_BUILD	=	
#SC_INSTALL	=	
SC_FIXUP	=	strip /usr/bin/bc /usr/bin/dc


