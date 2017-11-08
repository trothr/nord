#
#
#	  Name: rsync.mk
#		CSCRATCH make include file for RSYNC for NORD
#
#

SC_APN		=	rsync
SC_APV		=	3.1.2
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_URL		=	\
	http://rsync.samba.org/ftp/$(SC_APN)/src/$(SC_VRM)-NEWS \
	http://rsync.samba.org/ftp/$(SC_APN)/src/$(SC_VRM).tar.gz \
	http://rsync.samba.org/ftp/$(SC_APN)/src/$(SC_VRM).tar.gz.asc

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).asc
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0x6c859fb14b96a8c5

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr
#SC_BUILD	=	
#SC_INSTALL	=	
SC_FIXUP	=	strip /usr/bin/rsync


