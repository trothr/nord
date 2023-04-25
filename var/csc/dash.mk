#
#
#	  Name: dash.mk
#		CSCRATCH make include file for DASH for La Casita
#         Date: 2023-04-24 (Monday) and prior
#
#

SC_APN		=	dash
SC_APV		=	0.5.10.2
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_URL		=	\
 http://gondor.apana.org.au/~herbert/dash/files/$(SC_VRM).$(SC_ARC) \
 http://gondor.apana.org.au/~herbert/dash/files/$(SC_VRM).$(SC_ARC).sha256sum

#SC_FETCH	=	
#SC_SOURCE	=	

SC_CONFIG	=	./configure --prefix=/usr

#SC_BUILD	=	
SC_FIXUP	=	strip /usr/bin/dash
#SC_INSTALL	=	


