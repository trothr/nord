#
#
#	  Name: zlip.mk
#		CSCRATCH make include file for LZIP for NORD
#
#

APPLID		=	lzip
SC_APN		=	lzip
#SC_APV		=	1.15
SC_APV		=	1.20
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)
SC_URL		=	\
	http://download.savannah.gnu.org/releases/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
	http://download.savannah.gnu.org/releases/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

#SC_FETCH	=	
#SC_SOURCE	=	

SC_CONFIG	=	./configure --prefix=/usr

#SC_BUILD	=	
#SC_INSTALL	=	
SC_FIXUP	=	strip /usr/bin/lzip


