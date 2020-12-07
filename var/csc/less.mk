#
#
#	  Name: less.mk
#		CSCRATCH make include file for More or Less for La Casita
#
#

SC_APN		=	less
SC_APV		=	557
SC_VRM		=	$(SC_APN)-$(SC_APV)
SC_ARC		=	tar.gz

SC_URL		=	\
	http://www.greenwoodsoftware.com/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
	http://www.greenwoodsoftware.com/$(SC_APN)/$(SC_VRM).sig \
	http://www.greenwoodsoftware.com/$(SC_APN)/news.$(SC_APV).html

#SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).sig arc/$(SC_APN)/$(SC_VRM).$(SC_ARC)
#gpg --keyserver hkp://pool.sks-keyservers.net/ --recv-keys 0xf153a7c833235259

#SC_FETCH	=	
#SC_SOURCE	=	
#SC_CONFIG	=	./configure --prefix=/usr --disable-nls
SC_CONFIG	=	./configure --prefix=/usr --sysconfdir=/etc
#			need to set SYSDIR=/etc
#SC_BUILD	=	
#SC_INSTALL	=	
#SC_FIXUP	=	strip ...

#http://ftp.gnu.org/pub/gnu/less/$(SC_VRM).tar.gz
#http://freshmeat.net/projects/less/


