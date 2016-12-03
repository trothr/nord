#
#
#	  Name: sudo.mk
#		make include file for SU DO for La Casita CSCRATCH
#
#

#SC_VRM		=	sudo-1.6.9p16
#SC_URL		=	\
# ftp://ftp.zedz.net/pub/security/host-security/sudo/$(SC_VRM).tar.gz \
# ftp://ftp.zedz.net/pub/security/host-security/sudo/$(SC_VRM).tar.gz.sig
#SC_VRM		=	sudo-1.6.9p17
#SC_URL		=	\
# http://ftp.freebsd.org/pub/FreeBSD/ports/local-distfiles/tmclaugh/sudo/$(SC_VRM).tar.gz
SC_VRM		=	sudo-1.6.9p18
SC_URL		=	\
 http://www.hensa.ac.uk/sites/ftp.wiretapped.net/pub/security/host-security/sudo/$(SC_VRM).tar.gz \
 http://www.hensa.ac.uk/sites/ftp.wiretapped.net/pub/security/host-security/sudo/$(SC_VRM).tar.gz.sig

#SC_FETCH	=	
#SC_SOURCE	=	
#SC_CONFIG	=	./configure --prefix=/usr --disable-nls
SC_CONFIG	=	./configure --without-pam --prefix=/usr
#				--disable-pam-session
#SC_BUILD	=	
#SC_FIXUP	=	
#SC_INSTALL	=	


