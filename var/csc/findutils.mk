#
#
#	  Name: findutils.mk
#		CSCRATCH make include file for 'find' Utils for NORD
#         Date: 2023-04-24 (Monday) and prior
#
#

SC_APN		=	findutils
SC_APV		=	4.6.0
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_URL		=	http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
			http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0xa15b725964a95ee5

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr --disable-nls
#SC_BUILD	=	
SC_FIXUP	=	strip /usr/bin/find \
				/usr/bin/locate /usr/bin/xargs \
				/usr/libexec/bigram /usr/libexec/code \
				/usr/libexec/frcode
#SC_INSTALL	=	


