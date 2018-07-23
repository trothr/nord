#
#
#	  Name: sed.mk
#		CSCRATCH make include file for SED for NORD
#
#

SC_APN		=	sed
SC_APV		=	4.5
SC_ARC		=	tar.xz
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_URL		=	http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
			http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0x2684f9aca750566f

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr --disable-nls
#			executable found in /bin on SuSE
#SC_BUILD	=	
SC_FIXUP	=	strip /usr/bin/sed
#SC_INSTALL	=	


