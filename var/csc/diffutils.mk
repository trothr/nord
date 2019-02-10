#
#
#	  Name: diffutils.mk
#		CSCRATCH make include file for 'diff' Utils for NORD
#
#

SC_APN		=	diffutils
SC_APV		=	3.7
SC_ARC		=	tar.xz
SC_VRM		=	$(SC_APN)-$(SC_APV)

#SC_URL		=   ftp://ftp.gnu.org/pub/gnu/diffutils/$(SC_VRM).tar.gz
#SC_URL		=  http://ftp.gnu.org/pub/gnu/diffutils/$(SC_VRM).tar.gz
#SC_URL		=	\
#	http://alpha.gnu.org/pub/gnu/diffutils/$(SC_VRM).tar.gz \
#	http://alpha.gnu.org/pub/gnu/diffutils/$(SC_VRM).tar.gz.sig
SC_URL		=	\
	http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
	http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0x7fd9fccb000beeee

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr --disable-nls
#SC_BUILD	=	
SC_FIXUP	=	strip /usr/bin/diff /usr/bin/cmp \
				/usr/bin/diff3 /usr/bin/sdiff
#SC_INSTALL	=	


# http://freshmeat.net/projects/diffutils/


