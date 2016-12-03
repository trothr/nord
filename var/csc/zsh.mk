#
#
#	  Name: zsh.mk
#		CSCRATCH make include file for ZSH for La Casita
#
#

#SC_VRM		=	zsh-4.1.1
#SC_VRM		=	zsh-4.2.0
#SC_VRM		=	zsh-4.3.9
SC_VRM		=	zsh-4.3.16

#SC_URL		=	http://mirrors.sunsite.dk/zsh/zsh-4.1.1.tar.gz \
#		      http://mirrors.sunsite.dk/zsh/zsh-4.1.1-doc.tar.gz
#SC_URL		=      http://www.zsh.org/pub/zsh/old/$(SC_VRM).tar.gz \
#		     http://www.zsh.org/pub/zsh/old/$(SC_VRM)-doc.tar.gz
SC_URL		=      http://www.zsh.org/pub/old/$(SC_VRM).tar.gz \
		     http://www.zsh.org/pub/old/$(SC_VRM)-doc.tar.gz

#SC_FETCH	=	
#SC_SOURCE	=	

#SC_CONFIG	=	./configure --prefix=/usr
SC_CONFIG	=	./configure --prefix=/usr \
				--without-tcsetpgrp

#SC_BUILD	=	
#SC_FIXUP	=	strip ...
#SC_INSTALL	=	


