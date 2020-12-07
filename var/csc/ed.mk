#
#
#	  Name: ed.mk
#		CSCRATCH make include file for ED for La Casita
#
#

SC_APN		=	ed
SC_APV		=	1.15
SC_VRM		=	$(SC_APN)-$(SC_APV)
SC_ARC		=	tar.lz

SC_URL		=	\
	   https://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
	   https://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0x151308092983d606
#gpg --keyserver hkp://pool.sks-keyservers.net/ --recv-keys 0x8fe99503132d7742

#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr --disable-nls
#SC_BUILD	=	
#SC_INSTALL	=	
SC_FIXUP	=	strip /usr/bin/ed


