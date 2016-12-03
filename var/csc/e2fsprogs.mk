#
#
#	  Name: e2fsprogs.mk
#		CSCRATCH make include file for E2FSPROGS for La Casita
#
#

#SC_VRM		=	e2fsprogs-1.33
#SC_VRM		=	e2fsprogs-1.36
#SC_VRM		=	e2fsprogs-1.41.0
SC_VRM		=	e2fsprogs-1.41.14

#SC_URL		=	\
# http://umn.dl.sourceforge.net/sourceforge/e2fsprogs/e2fsprogs-1.33.tar.gz
#SC_URL		=	\
# http://easynews.dl.sourceforge.net/sourceforge/e2fsprogs/$(SC_VRM).tar.gz
SC_URL		=	\
   http://iweb.dl.sourceforge.net/sourceforge/e2fsprogs/$(SC_VRM).tar.gz
#http://prdownloads.sourceforge.net/e2fsprogs/$(SC_VRM).tar.gz

#SC_FETCH	=	
#SC_SOURCE	=	
#SC_CONFIG	=	./configure --prefix=/usr --disable-nls
SC_CONFIG	=	./configure CC=gcc --prefix=/usr --disable-nls \
				--sysconfdir=/etc
#SC_BUILD	=	
#SC_FIXUP	=	strip ...

# convoluted install to support Util-Linux later
SC_INSTALL	=	cp -p lib/libuuid.a lib/libblkid.a /usr/lib/. ; \
			mkdir -p /usr/include/uuid /usr/include/blkid ; \
			cp -p lib/uuid/*.h /usr/include/uuid/. ; \
			cp -p lib/blkid/*.h /usr/include/blkid/. ; \
			$(MAKE) install

# http://freshmeat.net/projects/e2fsprogs/




