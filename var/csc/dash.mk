#
#
#	  Name: dash.mk
#		CSCRATCH make include file for DASH for La Casita
#
#

SC_APN		=	dash
SC_APV		=	0.5.9.1
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_URL		=	\
 http://gondor.apana.org.au/~herbert/dash/files/$(SC_VRM).tar.gz \
 http://gondor.apana.org.au/~herbert/dash/files/$(SC_VRM).tar.gz.sha1sum

#SC_FETCH	=	
#SC_SOURCE	=	

SC_CONFIG	=	./configure --prefix=/usr

#SC_BUILD	=	
SC_FIXUP	=	strip /usr/bin/dash
#SC_INSTALL	=	


