#
#
#	  Name: groff.mk
#		CSCRATCH make include file for GROFF for La Casita
#
#

SC_APN		=	groff
SC_APV		=	1.22.4
SC_VRM          =       $(SC_APN)-$(SC_APV)
SC_ARC          =       tar.gz

SC_URL		=	\
		https://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).tar.gz \
		https://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).tar.gz.sig

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr
# Note: if X11 headers are present, be sure the libraries are linkable.
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


