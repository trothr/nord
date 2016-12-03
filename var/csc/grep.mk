#
#
#	  Name: grep.mk
#		CSCRATCH make include file for GREP for NORD
#
#

SC_APN		=	grep
SC_APV		=	2.21
SC_ARC		=	tar.xz
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_URL		=	http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
			http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0x7fd9fccb000beeee

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr --disable-nls
#				--with-included-gettext
#			executable found in /bin on SuSE
#SC_BUILD	=	rm -f /usr/bin/egrep /usr/bin/fgrep ; $(MAKE)
SC_FIXUP	=	strip /usr/bin/grep
SC_INSTALL	=	rm -f /usr/bin/egrep /usr/bin/fgrep ; $(MAKE) install

# http://freshmeat.net/projects/grep/
#SC_VRM		=	grep-2.5.1


