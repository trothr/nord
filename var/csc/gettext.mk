#
#
#	  Name: gettext.mk
#		CSCRATCH make include file for GETTEXT for La Casita
#         Date: 2023-04-24 (Monday) and prior
#
#

SC_APN		=	gettext
#SC_APV		=	0.19.8
SC_APV		=	0.20.1
#SC_ARC		=	tar.gz
SC_ARC		=	tar.xz
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_URL		=	\
	http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
	http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
#gpg --keyserver hkp://pool.sks-keyservers.net/ --recv-keys 0xd605848ed7e69871


#SC_FETCH	=	
#SC_SOURCE	=	

#SC_CONFIG	=	./configure --prefix=/usr --enable-static
SC_CONFIG	=	./configure --prefix=/usr \
				--enable-static --disable-shared \
				--disable-threads --disable-curses \
				--without-emacs \
				--without-libintl-prefix

#SC_BUILD	=	
SC_FIXUP        =       strip \
	/usr/bin/gettext \
	/usr/bin/ngettext \
	/usr/bin/msgcmp \
	/usr/bin/msgfmt \
	/usr/bin/msgmerge \
	/usr/bin/msgunfmt \
	/usr/bin/msguniq \
	/usr/bin/xgettext \
	/usr/bin/msgcat \
	/usr/bin/msgcomm \
	/usr/bin/msgattrib \
	/usr/bin/msgconv \
	/usr/bin/msgen \
	/usr/bin/msgexec \
	/usr/bin/msggrep \
	/usr/bin/msginit \
	/usr/bin/msgfilter \
	/usr/lib/gettext/hostname \
	/usr/lib/gettext/urlget \
	/usr/bin/envsubst \
	/usr/bin/recode-sr-latin
#SC_INSTALL	=	


# http://freshmeat.net/projects/gettext/


