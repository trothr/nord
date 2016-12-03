#
#
#	  Name: gawk.mk
#		CSCRATCH make include file for GAWK for NORD
#
#

SC_APN		=	gawk
SC_APV		=	4.1.3
SC_ARC		=	tar.xz
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_URL		=	http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
			http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0xdf597815937ec0d2

#SC_FETCH	=	
#SC_SOURCE	=	
#SC_CONFIG	=	./configure --prefix=/usr --disable-nls
#			executable found in /bin on SuSE
SC_CONFIG	=	./configure --prefix=/usr --disable-nls \
				--enable-static --disable-shared
#SC_BUILD	=	
SC_FIXUP	=	strip /usr/bin/gawk
#SC_INSTALL	=	

# http://freshmeat.net/projects/gnuawk/
# http://downloads.linuxfromscratch.org/gawk-3.1.1-3.patch


