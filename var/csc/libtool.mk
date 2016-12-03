#
#
#	  Name: libtool.mk
#		CSCRATCH make include file for GNU LibTool for NORD
#
#

SC_APN		=	libtool
SC_APV		=	2.4.6
SC_ARC		=	tar.xz
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_URL		=	http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
			http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0x151308092983d606

#SC_FETCH	=	
#SC_SOURCE	=	

#SC_CONFIG	=	./configure --prefix=/usr
SC_CONFIG	=	./configure --prefix=/usr \
				--enable-static --disable-shared

#SC_BUILD	=	
#SC_FIXUP	=	strip ...
#SC_INSTALL	=	

# http://freshmeat.net/projects/libtool/


