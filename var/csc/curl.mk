#
#
#	  Name: curl.mk
#		CSCRATCH make include file for CURL for NORD
#         Date: 2023-04-24 (Monday) and prior
#
#

SC_APN		=	curl
#SC_APV		=	7.60.0
#SC_APV		=	7.61.1
#SC_APV		=	7.72.0
#SC_APV		=	7.81.0
SC_APV		=	7.88.1
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)

#SC_URL		=	http://curl.haxx.se/download/$(SC_VRM).tar.gz
SC_URL		=	 http://curl.haxx.se/download/$(SC_VRM).tar.gz \
		       http://curl.haxx.se/download/$(SC_VRM).tar.gz.asc
#SC_URL		=   http://curl.signal42.com/download/$(SC_VRM).tar.gz \
#		http://curl.signal42.com/download/$(SC_VRM).tar.gz.asc \
#		    http://curl.tolix.org/download/$(SC_VRM).tar.gz \
#		http://curl.tolix.org/download/$(SC_VRM).tar.gz.asc \
#		    http://curl.seekmeup.com/download/$(SC_VRM).tar.gz \
#		http://curl.seekmeup.com/download/$(SC_VRM).tar.gz.asc

#SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).asc
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0x5cc908fdb71e12c2
# key is on the MIT PGP key server but not in the web of trust

#SC_FETCH	=	
#SC_SOURCE	=	
#SC_CONFIG	=	

#SC_CONFIG	=	./configure --prefix=/usr
SC_CONFIG	=	./configure --prefix=/usr \
				--disable-shared --enable-static \
				--with-ssl=/usr/opt/openssl

#SC_BUILD	=	
#SC_INSTALL	=	
SC_FIXUP	=	strip /usr/bin/curl


