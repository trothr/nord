#
#
#	  Name: utlinux.mk
#		CSCRATCH make include file for Util-Linux for La Casita
#
#

SC_APN		=	util-linux
#SC_APV		=	2.34
SC_APV		=	2.20
#SC_APV		=	2.27.1
SC_APV		=	2.19.1
SC_VRM		=	$(SC_APN)-$(SC_APV)
SC_ARC		=	tar.gz
#SC_ARC		=	tar.xz

SC_URL          =       \
 https://mirrors.edge.kernel.org/pub/linux/utils/$(SC_APN)/v$(SC_APV)/$(SC_VRM).$(SC_ARC) \
 https://mirrors.edge.kernel.org/pub/linux/utils/$(SC_APN)/v$(SC_APV)/$(SC_VRM).tar.sign

#SC_SOURCE_VERIFY = xzcat < arc/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
#                       | gpg --verify arc/$(SC_APN)/$(SC_VRM).tar.sign -
#gpg --keyserver hkp://pool.sks-keyservers.net/ --recv-keys 0xe4b71d5eec39c284

#SC_SOURCE	=	
SC_CONFIG	=	./configure \
				--without-python --without-inotify \
				--enable-static --disable-shared \
				--disable-nls
#SC_FIXUP	=	
#SC_INSTALL	=	

REQ		=	E2FSPROGS FILE


