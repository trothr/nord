#
#
#	  Name: texinfo.mk
#		CSCRATCH make include file for TeXInfo for NORD
#         Date: 2023-04-24 (Monday) and prior
#
#

SC_APN		=	texinfo
#SC_APV		=	6.4
#SC_APV		=	6.5
#SC_APV		=	6.7
SC_APV		=	7.0.3
SC_ARC		=	tar.xz
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_URL		=	http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
			http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0x0716748a30d155ad

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr --disable-nls
#SC_BUILD	=	
SC_FIXUP	=	strip /usr/bin/info /usr/bin/install-info
#SC_INSTALL	=	


