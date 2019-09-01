#
#
#	  Name: xz.mk
#		CSCRATCH make include file for XZ for NORD
#
#

SC_APN		=	xz
#SC_APV		=	5.2.3
SC_APV		=	5.2.4
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_URL		=	http://www.tukaani.org/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
			http://www.tukaani.org/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig \
			http://www.tukaani.org/misc/lasse_collin_pubkey.txt

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0x38ee757d69184620

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr \
			--disable-shared --enable-static
#SC_BUILD	=	
#SC_INSTALL	=	
SC_FIXUP	=	strip /usr/bin/xz \
	/usr/bin/lzmainfo /usr/bin/lzmadec /usr/bin/xzdec

# requires gettext


