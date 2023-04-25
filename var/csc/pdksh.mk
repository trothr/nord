#
#
#	  Name: pdksh.mk
#		CSCRATCH make include file for PDKSH for La Casita
#         Date: 2023-04-24 (Monday) and prior
#
#

SC_APN		=	pdksh
SC_APV		=	5.2.14
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)

#SC_URL		=	\
#		  ftp://ftp.cs.mun.ca/pub/pdksh/pdksh-5.2.14.tar.gz \
#		  ftp://ftp.cs.mun.ca/pub/pdksh/pdksh-5.2.14-patches.1 \
#		  ftp://ftp.cs.mun.ca/pub/pdksh/pdksh-5.2.14-patches.2
# pdksh-5.2.14.man.cat.gz
#SC_URL		=	\
#	http://www.cs.mun.ca/~michael/pdksh/pdksh-5.2.14.tar.gz \
#	http://www.cs.mun.ca/~michael/pdksh/pdksh-5.2.14-patches.1.gz \
#	http://www.cs.mun.ca/~michael/pdksh/pdksh-5.2.14-patches.2.gz
SC_URL		=	\
	http://gd.tuwien.ac.at/utils/shells/pdksh/$(SC_VRM).tar.gz \
	http://gd.tuwien.ac.at/utils/shells/pdksh/$(SC_VRM).man.cat.gz \
	http://gd.tuwien.ac.at/utils/shells/pdksh/$(SC_VRM)-patches.1 \
	http://gd.tuwien.ac.at/utils/shells/pdksh/$(SC_VRM)-patches.2

#SC_FETCH	=	
# FIXUP=cp pdksh-5.2.14-patches.1 pdksh-5.2.14-1.diff
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr

SC_BUILD	=	_POSIX2_VERSION=200111 ; \
			export _POSIX2_VERSION ; \
			$(MAKE)

#SC_INSTALL	=	
SC_FIXUP	=	strip /usr/bin/ksh


# _POSIX2_VERSION=199209 ; export _POSIX2_VERSION


