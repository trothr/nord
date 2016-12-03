#
#
#	  Name: dash.mk
#		CSCRATCH make include file for DASH for La Casita
#
#

#SC_VRM		=	dash-0.5.6
#SC_VRM		=	dash-0.5.6.1
#SC_VRM		=	dash-0.5.7

SC_APN		=	dash
SC_APV		=	0.5.7
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


