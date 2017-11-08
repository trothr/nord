#
#
#	  Name: db.mk
#		make include file for DB for La Casita
#
#

#SC_VRM		=	db-3.3.11
#SC_VRM		=	db-4.2.52
#SC_VRM		=	db-4.8.24
SC_VRM		=	db-6.0.20

#SC_URL	   =   http://www.sleepycat.com/update/snapshot/$(SC_VRM).tar.gz
#SC_URL		=   ftp://sleepycat1.inetu.net/releases/$(SC_VRM).tar.gz
SC_URL     =     http://download.oracle.com/berkeley-db/$(SC_VRM).tar.gz

#SC_FETCH	=	

#SC_SOURCE	=	$(SC_VRM)/dist
SC_SOURCE	=	$(SC_VRM)/build_unix

#SC_CONFIG	=	./configure --prefix=/usr --enable-compat185
#SC_CONFIG	=	./configure               --enable-compat185
#SC_CONFIG	=     ../dist/configure --prefix=/usr --enable-compat185
SC_CONFIG	=     ../dist/configure --prefix=/usr --enable-compat185 \
					--enable-static --disable-shared

#SC_BUILD	=	

#SC_FIXUP	=	strip ...

#SC_INSTALL	=	


# see also
# http://www.oracle.com/technology/software/products/berkeley-db/htdocs/popup/db/4.8.24/db-targz.html


