#
#
#	  Name: e2fsprogs.mk
#		CSCRATCH make include file for E2FSPROGS for La Casita
#
#

SC_APN		=	e2fsprogs
#SC_APV		=	1.45.6
SC_APV		=	1.41.14
#SC_APV		=	1.42.13
SC_VRM		=	$(SC_APN)-$(SC_APV)
SC_ARC		=	tar.gz

SC_URL          =       \
 https://mirrors.edge.kernel.org/pub/linux/kernel/people/tytso/$(SC_APN)/v$(SC_APV)/$(SC_VRM).$(SC_ARC) \
 https://mirrors.edge.kernel.org/pub/linux/kernel/people/tytso/$(SC_APN)/v$(SC_APV)/$(SC_VRM).tar.sign

#SC_SOURCE_VERIFY = xzcat < arc/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
#                       | gpg --verify arc/$(SC_APN)/$(SC_VRM).tar.sign -
#gpg --keyserver hkp://pool.sks-keyservers.net/ --recv-keys 0xddbc579dab37fba9

#SC_FETCH	=	
#SC_SOURCE	=	
#SC_CONFIG	=	./configure --prefix=/usr --disable-nls
SC_CONFIG	=	./configure CC=gcc --prefix=/usr --disable-nls \
				--sysconfdir=/etc
#SC_FIXUP	=	strip ...

# convoluted install to support Util-Linux later
SC_INSTALL	=	cp -p lib/libuuid.a lib/libblkid.a /usr/lib/. ; \
			mkdir -p /usr/include/uuid /usr/include/blkid ; \
			cp -p lib/uuid/*.h /usr/include/uuid/. ; \
			cp -p lib/blkid/*.h /usr/include/blkid/. ; \
			$(MAKE) install

# http://freshmeat.net/projects/e2fsprogs/


