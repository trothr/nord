#
#
#	  Name: ed.mk
#		CSCRATCH make include file for ED for La Casita
#
#

#SC_VRM		=	ed-0.2
#SC_VRM		=	ed-0.9
#SC_VRM		=	ed-1.4
#SC_VRM		=	ed-1.5	# gone 404
#SC_VRM		=	ed-1.13

SC_APN		=	ed
SC_APV		=	1.4
#SC_APV		=	1.9
#SC_APV		=	1.13	# requires lzip
#SC_APV		=	1.14.2
SC_ARC		=	tar.gz
#SC_ARC		=	tar.bz2
#SC_ARC		=	tar.lz
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_URL		=	\
	    http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
	    http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0x151308092983d606

#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr --disable-nls
#SC_BUILD	=	
#SC_INSTALL	=	
SC_FIXUP	=	strip /usr/bin/ed


