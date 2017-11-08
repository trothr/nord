#
#
#	  Name: utlinux.mk
#		CSCRATCH make include file for Util-Linux for La Casita
#
#

#SC_VRM		=	util-linux-2.11z
#SC_VRM		=	util-linux-2.12q
#SC_VRM		=	util-linux-2.12r
#SC_VRM		=	util-linux-ng-2.13.1
# pre-reqs for NG: -luuid -lblkid both found in E2FSPROGS
#SC_VRM		=	util-linux-ng-2.16.2
#SC_VRM		=	util-linux-2.19.1
#SC_VRM		=	util-linux-2.20 <<< NORD 6 fallback
#SC_VRM		=	util-linux-ng-2.17

SC_APN		=	util-linux
#SC_APV		=	2.20
#SC_APV		=	2.26
SC_APV		=	2.27
#SC_APV		=	2.28
#SC_APV		=	2.29

SC_ARC		=	tar.xz
#SC_VRM		=	$(SC_APN)-$(SC_APV)
SC_VRM		=	util-linux-2.27.1
#SC_VRM		=	util-linux-2.28.2
#SC_VRM		=	util-linux-2.29.2

#SC_URL		=	\
# http://www.kernel.org/pub/linux/utils/util-linux/$(SC_VRM).lsm \
# http://www.kernel.org/pub/linux/utils/util-linux/$(SC_VRM).tar.gz \
# http://www.kernel.org/pub/linux/utils/util-linux/$(SC_VRM).tar.sign
#SC_URL		=	\
# http://www.kernel.org/pub/linux/utils/util-linux-ng/v2.13/util-linux-ng-2.13.1.tar.gz \
# http://www.kernel.org/pub/linux/utils/util-linux-ng/v2.13/util-linux-ng-2.13.1.tar.sign
#SC_URL		=	\
# http://www.kernel.org/pub/linux/utils/util-linux-ng/v2.16/$(SC_VRM).tar.gz \
# http://www.kernel.org/pub/linux/utils/util-linux-ng/v2.16/$(SC_VRM).tar.sign
#SC_URL		=	\
# http://www.kernel.org/pub/linux/utils/util-linux-ng/v2.19/$(SC_VRM).tar.gz \
# http://www.kernel.org/pub/linux/utils/util-linux-ng/v2.19/$(SC_VRM).tar.sign
#SC_URL		=	\
# http://www.kernel.org/pub/linux/utils/util-linux-ng/v2.20/util-linux-2.20.tar.gz \
# http://www.kernel.org/pub/linux/utils/util-linux-ng/v2.20/util-linux-2.20.tar.sign
#SC_URL=http://anduin.linuxfromscratch.org/sources/LFS/lfs-packages/conglomeration/util-linux/util-linux-2.20.tar.bz2

#SC_URL=http://anduin.linuxfromscratch.org/sources/LFS/lfs-packages/6.6/util-linux-ng-2.17.tar.bz2

#SC_URL		=	\
# https://www.kernel.org/pub/linux/utils/$(SC_APN)/v$(SC_APV)/$(SC_APN)-$(SC_APV).$(SC_ARC) \
# https://www.kernel.org/pub/linux/utils/$(SC_APN)/v$(SC_APV)/$(SC_APN)-$(SC_APV).tar.sign
SC_URL		=	\
 https://www.kernel.org/pub/linux/utils/$(SC_APN)/v$(SC_APV)/$(SC_VRM).$(SC_ARC) \
 https://www.kernel.org/pub/linux/utils/$(SC_APN)/v$(SC_APV)/$(SC_VRM).tar.sign

#SC_FETCH	=	$(SC_FETCH_BZ)

#SC_SOURCE	=	

SC_CONFIG	=	./configure \
				--without-python --without-inotify \
				--enable-static --disable-shared \
				--disable-nls

#SC_BUILD        =       $(MAKE) CC=gcc
#SC_FIXUP	=	
#SC_INSTALL	=	

# chgrp: invalid group name `tty'
# install: invalid user `root'

REQ		=	E2FSPROGS FILE


