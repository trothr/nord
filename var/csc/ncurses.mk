#
#
#	  Name: ncurses.mk
#		CSCRATCH make include file for NCURSES for NORD
#
#

SC_APN		=	ncurses
SC_APV		=	6.1
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_URL		=	\
	   https://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
	   https://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
#gpg --keyserver hkp://pool.sks-keyservers.net/ --recv-keys 0x702353e0f7e48edb

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr \
				--enable-static --disable-shared \
				--disable-nls
#				--enable-termcap
#SC_BUILDX	=	../ncurses.sh
#SC_FIXUP	=	
#SC_INSTALL	=	


