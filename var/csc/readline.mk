#
#
#	  Name: readline.mk
#		CSCRATCH make include file for READLINE for NORD
#         Date: 2023-04-24 (Monday) and prior
#
#

SC_APN		=	readline
#SC_APV		=	7.0
SC_APV		=	8.2
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_URL		=	http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
			http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0xbb5869f064ea74ab

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr \
				--enable-static --disable-shared
#SC_BUILD	=	
#SC_INSTALL	=	
#SC_FIXUP	=	strip ...


