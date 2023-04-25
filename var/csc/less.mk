#
#
#	  Name: less.mk
#		CSCRATCH make include file for More or Less for La Casita
#         Date: 2023-04-24 (Monday) and prior
#
#

#SC_VRM		=	less-381
#SC_VRM		=	less-382
#SC_VRM		=	less-444
#SC_VRM		=	less-530
SC_VRM		=	less-557
#SC_URL		=	http://ftp.gnu.org/pub/gnu/less/$(SC_VRM).tar.gz
SC_URL		=  http://www.greenwoodsoftware.com/less/$(SC_VRM).tar.gz

#SC_FETCH	=	
#SC_SOURCE	=	
#SC_CONFIG	=	./configure --prefix=/usr --disable-nls
SC_CONFIG	=	./configure --prefix=/usr --sysconfdir=/etc
#			need to set SYSDIR=/etc
#SC_BUILD	=	
#SC_FIXUP	=	strip ...
#SC_INSTALL	=	


# http://freshmeat.net/projects/less/


