#
#
#	  Name: ncurses.mk
#		CSCRATCH make include file for NCURSES for NORD
#
#

SC_APN		=	ncurses
SC_APV		=	6.0
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_URL		=	http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
			http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0x702353e0f7e48edb

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr \
				--disable-shared --enable-static \
				--disable-nls
#				--enable-termcap
#SC_BUILD	=	../ncurses.sh
#SC_FIXUP	=	
#SC_INSTALL	=	


