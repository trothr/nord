#
#
#	  Name: xinetd.mk
#		make include file for xinetd for CSCRATCH and NORD
#
#

#SC_VRM		=	xinetd-2.1.8.8p1
#SC_VRM		=	xinetd-2.3.10
#SC_VRM		=	xinetd-2.3.13
SC_APN		=	xinetd
SC_APV		=	2.3.15
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_ARC		=	tar.gz
# SC_TAR will be set automatically from this

#SC_URL		=	http://www.xinetd.org/$(SC_VRM).$(SC_ARC)
SC_URL		=	\
     ftp://mirror.ovh.net/gentoo-distfiles/distfiles/$(SC_VRM).$(SC_ARC)

#SC_FETCH	=	

#SC_SOURCE	=	

#SC_CONFIG	=	
#SC_CONFIG	=	./configure --prefix=/usr --disable-nls
SC_CONFIG	=	./configure --prefix=/usr

#SC_BUILD	=	

#SC_INSTALL	=	

#SC_FIXUP	=	


# https://github.com/xinetd-org/xinetd


