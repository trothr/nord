#
#
#	  Name: vim.mk
#		CSCRATCH make include file for VI Improved for La Casita
#
#

SC_APN		=	vim
SC_APV		=	8.2
SC_ARC		=	tar.bz2
SC_VRM		=	$(SC_APN)-$(SC_APV)

#SC_URL	= http://ftp.surfnet.nl/ftp/pub/editors/vim/unix/vim-6.2.tar.bz2
#SC_URL	= http://ftp.surfnet.nl/ftp/pub/editors/vim/unix/vim-7.2.tar.bz2
#SC_URL	= http://ftp.surfnet.nl/ftp/pub/editors/vim/unix/vim-7.3.tar.bz2
SC_URL		=	\
 http://ftp.surfnet.nl/ftp/pub/editors/$(SC_APN)/unix/$(SC_VRM).$(SC_ARC)

#SC_FETCH	=	wget --passive-ftp --no-clobber $(SC_URL) ; \
#			bzcat vim-7.3.tar.bz2 | gzip > vim73.tar.gz ; \
#			touch -r vim-7.3.tar.bz2 vim73.tar.gz
SC_SOURCE	=	vim82
SC_CONFIG	=	true
#SC_INSTALL	=	
SC_FIXUP	=	mv /usr/local/bin/vim \
			    /usr/local/bin/vimtutor \
			    /usr/local/bin/xxd \
			/usr/bin/. ; \
			ln -sf vim /usr/bin/vi ; \
			ln -sf vim /usr/bin/ex ; \
			ln -sf vim /usr/bin/rview ; \
			ln -sf vim /usr/bin/rvim ; \
			ln -sf vim /usr/bin/view ; \
			ln -sf vim /usr/bin/vimdiff

#URL=ftp://ftp.vim.org/pub/editors/vim/unix/vim-6.1.tar.gz


