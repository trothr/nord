# 
# 
#	  Name: cpio.mk 
#		make include file for CPIO for La Casita 
# 
# 
 
SC_APN		=	cpio
SC_APV		=	2.13
SC_VRM		=	$(SC_APN)-$(SC_APV)
SC_ARC		=	tar.bz2

SC_URL		=	\
		https://ftp.gnu.org/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
		https://ftp.gnu.org/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
#gpg --keyserver hkp://pool.sks-keyservers.net/ --recv-keys 0x3602b07f55d0c732

#SC_FETCH	=	
#SC_SOURCE	=	
#SC_CONFIG	=	
#SC_INSTALL	=	
#SC_FIXUP	=	
 

