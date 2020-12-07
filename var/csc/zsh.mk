#
#
#	  Name: zsh.mk
#		CSCRATCH make include file for ZSH for La Casita
#
#

SC_APN		=	zsh
#SC_APV		=	5.8
SC_APV		=	5.7.1
SC_VRM		=	$(SC_APN)-$(SC_APV)
SC_ARC		=	tar.xz

#SC_URL		=	http://mirrors.sunsite.dk/zsh/zsh-4.1.1.tar.gz \
#		      http://mirrors.sunsite.dk/zsh/zsh-4.1.1-doc.tar.gz
#SC_URL		=      http://www.zsh.org/pub/zsh/old/$(SC_VRM).tar.gz \
#		     http://www.zsh.org/pub/zsh/old/$(SC_VRM)-doc.tar.gz
#SC_URL		=      http://www.zsh.org/pub/old/$(SC_VRM).tar.gz \
#		     http://www.zsh.org/pub/old/$(SC_VRM)-doc.tar.gz
SC_URL		=	\
		     https://www.zsh.org/pub/old/$(SC_VRM).$(SC_ARC) \
		     https://www.zsh.org/pub/old/$(SC_VRM).$(SC_ARC).asc

#SC_FETCH	=	
#SC_SOURCE	=	
#SC_CONFIG	=	./configure --prefix=/usr
SC_CONFIG	=	./configure --prefix=/usr \
				--without-tcsetpgrp
#SC_FIXUP	=	strip ...
#SC_INSTALL	=	


