#
#
#	  Name: sharutils.mk
#		CSCRATCH make include file for SHARUTILS for NORD
#
#

SC_APN		=	sharutils
SC_APV		=	4.15.2
SC_VRM		=	$(SC_APN)-$(SC_APV)
SC_ARC		=	tar.xz

SC_URL		=	\
	   https://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
	   https://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

#SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
#gpg --keyserver hkp://pool.sks-keyservers.net/ --recv-keys 0xd9204cb5bfbf0221

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr \
				--enable-static --disable-shared
#SC_INSTALL	=	
#SC_FIXUP	=	strip ...


