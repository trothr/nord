# 
# 
#	  Name: ppp.mk 
#		make include file for PPP for La Casita 
# 
# 
 
#SC_VRM		=	ppp-2.3.11
#SC_VRM		=	ppp-2.4.1
#SC_VRM		=	ppp-2.4.2
#SC_VRM		=	ppp-2.4.4b1
SC_VRM		=	ppp-2.4.5
SC_URL		=	ftp://ftp.samba.org/pub/ppp/$(SC_VRM).tar.gz 
#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr
#SC_BUILD	=	
#SC_INSTALL	=	
#SC_FIXUP	=	
 
# req libpcap-0.8.1-39
# req group "daemon" 
# ln -sf ../pcap-bpf.h /usr/include/net/bpf.h 

