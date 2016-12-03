#
#
#	  Name: flex.mk
#		CSCRATCH make include file for FLEX for NORD
#
#

SC_APN		=	flex
SC_APV		=	2.5.39
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)

#SC_URL        = http://ftp.gnu.org/pub/non-gnu/flex/flex-2.5.4a.tar.gz \
#			    http://www.casita.net/arc/flex-2.5.4a.tar.gz
#   http://internap.dl.sourceforge.net/sourceforge/flex/$(SC_VRM).tar.gz
#     http://prdownloads.sourceforge.net/flex/$(SC_VRM).tar.bz2?download
#	  http://superb-dca3.dl.sourceforge.net/flex/flex-2.5.37.tar.bz2
SC_URL		=	\
	  http://superb-dca3.dl.sourceforge.net/$(SC_APN)/$(SC_VRM).$(SC_ARC)

#SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0xnnnnnnnnnnnnnnnn

#SC_FETCH	=	
#SC_SOURCE	=	
#SC_CONFIG	=	./configure --prefix=/usr --disable-nls
#SC_CONFIG	=	./configure --prefix=/usr --without-nls
#SC_CONFIG	=	./configure --prefix=/usr
SC_CONFIG	=	./configure --prefix=/usr \
				--enable-static --disable-shared
#SC_BUILD	=	
SC_FIXUP	=	strip /usr/bin/flex
#SC_INSTALL	=	

# http://freshmeat.net/projects/flex/
# req M4


