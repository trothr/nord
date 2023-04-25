#
#
#	  Name: pkgconfig.mk
#		make include file for pkg-config for La Casita
#         Date: 2023-04-24 (Monday) and prior
#
#

#SC_VRM		=	pkgconfig-0.15.0
#SC_VRM		=	pkgconfig-0.18
SC_VRM		=	pkg-config-0.29.2
#SC_URL		=	\
# http://www.freedesktop.org/software/pkgconfig/releases/$(SC_VRM).tar.gz
SC_URL   =    http://pkgconfig.freedesktop.org/releases/$(SC_VRM).tar.gz
#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr # --disable-nls \
#						--with-internal-glib
#SC_BUILD	=	
SC_FIXUP	=	strip /usr/bin/pkg-config 
#SC_INSTALL	=	


