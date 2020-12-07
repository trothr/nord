#
#
#	  Name: sudo.mk
#		make include file for SU DO for La Casita NORD
#
#

SC_APN		=	sudo
SC_APV		=	1.8.29
SC_VRM		=	$(SC_APN)-$(SC_APV)
SC_ARC		=	tar.gz

#SC_URL		=	\
# ftp://ftp.zedz.net/pub/security/host-security/sudo/$(SC_VRM).tar.gz \
# ftp://ftp.zedz.net/pub/security/host-security/sudo/$(SC_VRM).tar.gz.sig
#SC_URL		=	\
# http://ftp.freebsd.org/pub/FreeBSD/ports/local-distfiles/tmclaugh/sudo/$(SC_VRM).tar.gz
#SC_URL		=	\
# http://www.hensa.ac.uk/sites/ftp.wiretapped.net/pub/security/host-security/sudo/$(SC_VRM).tar.gz \
# http://www.hensa.ac.uk/sites/ftp.wiretapped.net/pub/security/host-security/sudo/$(SC_VRM).tar.gz.sig
SC_URL		=	https://www.sudo.ws/dist/$(SC_VRM).$(SC_ARC) \
			https://www.sudo.ws/dist/$(SC_VRM).$(SC_ARC).sig

#SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig arc/$(SC_APN)/$(SC_VRM).$(SC_ARC)
#gpg --keyserver hkp://pool.sks-keyservers.net/ --recv-keys 0xa9f4c021cea470fb


#SC_FETCH	=	
#SC_SOURCE	=	
#SC_CONFIG	=	./configure --prefix=/usr --disable-nls
SC_CONFIG	=	./configure --without-pam --prefix=/usr \
					--enable-static --disable-shared
#				--disable-pam-session
#SC_INSTALL	=	
#SC_FIXUP	=	


