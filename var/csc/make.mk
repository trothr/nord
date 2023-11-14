#
#
#	  Name: make.mk
#		CSCRATCH make include file for GNU Make for NORD
#		This remained back-level until
#		other packages outgrew their allergy to Make 3.8x.
#         Date: 2023-04-24 (Monday) and prior
#
#

SC_APN		=	make
#SC_APV		=	3.79.1	# no signature
#SC_APV		=	4.2.1
SC_APV		=	4.3
SC_ARC		=	tar.gz
#SC_ARC		=	tar.bz2
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_URL		=	http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
			http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
#gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0x96b047156338b6d4

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr --disable-nls
#SC_BUILD	=	
SC_FIXUP	=	strip /usr/bin/make
#SC_INSTALL	=	


