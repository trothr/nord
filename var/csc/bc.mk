#
#
#	  Name: bc.mk
#		CSCRATCH make include file for BC for La Casita
#
#

SC_VRM		=	bc-1.06

SC_URL		=	http://ftp.gnu.org/pub/gnu/bc/bc-1.06.tar.gz

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr --disable-nls
#SC_BUILD	=	
#SC_INSTALL	=	
SC_FIXUP	=	strip /usr/bin/bc /usr/bin/dc


