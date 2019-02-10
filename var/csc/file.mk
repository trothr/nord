#
#
#	  Name: file.mk
#		CSCRATCH make include file for 'file' for NORD
#
#

SC_APN		=	file
#SC_APV		=	5.31
SC_APV		=	5.35
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)

#SC_URL		=	http://ftp.gnu.org/pub/gnu/file/file-3.41.tar.gz
#SC_URL		=	http://ftp.gnu.org/gnu/file/file-3.41.tar.gz
#SC_URL		=	ftp://ftp.astron.com/pub/file/file-4.06.tar.gz
#SC_URL		=	ftp://ftp.astron.com/pub/file/$(SC_VRM).tar.gz
#SC_URL			ftp://ftp.gw.com/mirrors/pub/unix/file/file-4.06.tar.gz
#SC_URL		=	http://ftp.fredan.org/pub/gentoo.org/distfiles/$(SC_VRM).tar.gz
#SC_URL		=	http://familiar.handhelds.org/source/v0.8.0/package-sources/$(SC_VRM).tar.gz
#SC_URL		=	http://ftp.astron.com/pub/file/$(SC_VRM).tar.gz
#SC_URL		=	ftp://ftp.astron.com/pub/file/$(SC_VRM).tar.gz
SC_URL		=	http://distfiles.macports.org/$(SC_APN)/$(SC_VRM).$(SC_ARC)

#SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0xnnnnnnnnnnnnnnnn

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr \
				--enable-static --disable-shared
#SC_BUILD	=	
#SC_INSTALL	=	
SC_FIXUP	=	strip /usr/bin/file

# http://freshmeat.net/projects/file/


