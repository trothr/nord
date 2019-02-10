#
#
#	  Name: groff.mk
#		CSCRATCH make include file for GROFF for La Casita
#
#

#SC_VRM		=	groff-1.17
#SC_VRM		=	groff-1.17.1
#SC_VRM		=	groff-1.17.2
#SC_VRM		=	groff-1.18
#SC_VRM		=	groff-1.18.1.4   ### fails 2011
#SC_VRM		=	groff-1.19.2   ### fails 2011
#SC_VRM		=	groff-1.21
SC_VRM		=	groff-1.22.4
SC_URL		=    http://ftp.gnu.org/pub/gnu/groff/$(SC_VRM).tar.gz \
		   http://ftp.gnu.org/pub/gnu/groff/$(SC_VRM).tar.gz.sig

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr
#SC_BUILD	=	
SC_FIXUP	=	strip /usr/bin/groff \
				/usr/bin/addftinfo \
				/usr/bin/eqn \
				/usr/bin/grn \
				/usr/bin/grodvi \
				/usr/bin/grolbp \
				/usr/bin/grolj4 \
				/usr/bin/grops \
				/usr/bin/grotty \
				/usr/bin/hpftodit \
				/usr/bin/indxbib \
				/usr/bin/lkbib \
				/usr/bin/lookbib \
				/usr/bin/pfbtops \
				/usr/bin/pic \
				/usr/bin/post-grohtml \
				/usr/bin/pre-grohtml \
				/usr/bin/refer \
				/usr/bin/soelim \
				/usr/bin/tbl \
				/usr/bin/tfmtodit \
				/usr/bin/troff
#SC_INSTALL	=	


# http://freshmeat.net/projects/groff/


