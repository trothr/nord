#
#
#	  Name: rsync.mk
#		CSCRATCH make include file for RSYNC for NORD
#         Date: 2023-04-24 (Monday) and prior, back level
#
#

SC_APN		=	rsync
#SC_APV		=	3.1.2
#SC_APV		=	3.1.3
SC_APV		=	3.2.3
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

REQ             =       xxhash, zstd, lz4


