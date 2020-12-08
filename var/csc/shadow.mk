#
#
#	  Name: shadow.mk
#		CSCRATCH make include file for Shadow Passwords for La Casita
#
#

#SC_VRM		=	shadow-4.0.3
### NOTE ### needs a patch to "newgrp.c" to include <signal.h>
#SC_VRM		=	shadow-4.0.3C
#SC_URL		=	\
#		ftp://ftp.pld.org.pl/software/shadow/shadow-4.0.3.tar.gz
#SC_URL		=     http://www.casita.net/pub/.../shadow-4.0.3C.tar.gz
#
#SC_VRM		=	shadow-4.0.7
#SC_VRM		=	shadow-4.0.15
#SC_VRM		=	shadow-4.1.1
#SC_VRM		=	shadow-4.0.18
#SC_VRM		=	shadow-4.0.18.1
#SC_VRM		=	shadow-4.1.4.3

SC_APN		=	shadow
SC_APV		=	4.1.5.1
SC_VRM		=	$(SC_APN)-$(SC_APV)
SC_ARC		=	tar.bz2

#
#SC_URL		=	\
#     http://osx.freshmeat.net/redir/shadow/9477/url_tgz/$(SC_VRM).tar.gz
#SC_URL		=  ftp://ftp.pld.org.pl/software/shadow/$(SC_VRM).tar.gz
#
#SC_VRM		=	shadow-YYMMDD
#SC_URL		=	\
#	ftp://ftp.gts.cz/pub/linux/security/shadow/shadow-current.tar.gz
#
#SC_URL=http://www.mirrorservice.org/sites/ftp.wiretapped.net/pub/security/host-security/shadow/old/$(SC_VRM).tar.gz
#SC_URL=http://www.mirrorservice.org/sites/ftp.wiretapped.net/pub/security/host-security/shadow/$(SC_VRM).tar.gz
#SC_URL=http://pkg-shadow.alioth.debian.org/releases/shadow-4.1.4.3.tar.bz2
SC_URL		=	\
     http://pkg-$(SC_APN).alioth.debian.org/releases/$(SC_VRM).$(SC_ARC)

#SC_FETCH	=	
#SC_CONFIG	=	./configure --prefix=/usr --disable-nls
#SC_CONFIG	=	./configure --disable-nls
SC_CONFIG	=	./configure --disable-nls \
				--without-selinux --enable-man \
				--sysconfdir=/etc
#SC_INSTALL	=	
#SC_FIXUP	=	

#NANON#ftp://ftp.ists.pwr.wroc.pl/pub/linux/shadow/shadow-current.tar.gz
#DNS#ftp://iguana.hut.fi/pub/linux/shadow/shadow-current.tar.gz
#FNF#ftp://ftp.icm.edu.pl/pub/Linux/shadow-pwr/shadow-current.tar.gz
#DNS#ftp://ftp.athena.del.ufrj.br/pub/linux/shadow_password/shadow-current.tar.gz
#DNS#ftp://ftp.voyager.abac.com/pub/shadow/shadow-current.tar.gz
#ftp://ftp.gts.cz/pub/linux/security/shadow/shadow-current.tar.gz
#DNS#ftp://ftp.donald.fr/shadow/shadow-current.tar.gz
#TO#ftp://xenium.pdi.net/pub/Crypto/shadow/shadow-current.tar.gz


