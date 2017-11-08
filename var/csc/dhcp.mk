# 
# 
#	  Name: dhcp.mk 
#		make include file for ISC DHCP for La Casita 
# 
# 
 
#SC_VRM		=	dhcp-3.0pl2
#SC_VRM		=	dhcp-3.0.1
#SC_VRM		=	dhcp-3.0.3
#SC_VRM		=	dhcp-4.3.0

SC_APN		=	dhcp
SC_APV		=	4.3.3
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)
  
SC_URL		=	\
   ftp://ftp.isc.org/isc/dhcp/$(SC_APV)/$(SC_VRM)-RELNOTES \
   ftp://ftp.isc.org/isc/dhcp/$(SC_APV)/$(SC_VRM).$(SC_ARC) \
   ftp://ftp.isc.org/isc/dhcp/$(SC_APV)/$(SC_VRM).$(SC_ARC).asc \
   ftp://ftp.isc.org/isc/dhcp/$(SC_APV)/$(SC_VRM).$(SC_ARC).sha1.asc \
   ftp://ftp.isc.org/isc/dhcp/$(SC_APV)/$(SC_VRM).$(SC_ARC).sha256.asc \
   ftp://ftp.isc.org/isc/dhcp/$(SC_APV)/$(SC_VRM).$(SC_ARC).sha512.asc

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr 
#SC_BUILD	=	
#SC_INSTALL	=	
SC_FIXUP	=	strip /usr/sbin/dhclient /usr/bin/omshell \
				/usr/sbin/dhcpd /usr/sbin/dhcrelay 
 
#ftp://ftp.isc.org/isc/dhcp/dhcp-latest.tar.gz
 
# requires NROFF 
 

