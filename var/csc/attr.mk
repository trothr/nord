# 
# 
#	  Name: attr.mk 
#		make include file for ATTR for La Casita 
# 
# 
 
SC_APN		=	attr
SC_APV		=	2.4.48
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)

SC_URL          =       \
 http://download.savannah.nongnu.org/releases/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
 http://download.savannah.nongnu.org/releases/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

#SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
#gpg --keyserver hkp://pool.sks-keyservers.net/ --recv-keys 0x41633b9fe837f581

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr --enable-static --disable-shared
#SC_INSTALL	=	
#SC_FIXUP	=	
 


