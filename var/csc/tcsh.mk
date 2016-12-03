#
#
#	  Name: tcsh.mk
#		CSCRATCH make include file for TCSH for La Casita
#
#

#SC_VRM		=	tcsh-6.12.00
#SC_VRM		=	tcsh-6.13.00
#SC_VRM		=	tcsh-6.14.00
#SC_VRM		=	tcsh-6.15.00
#SC_VRM		=	tcsh-6.17.00
#SC_VRM		=	tcsh-6.18.01

SC_APN		=	tcsh
SC_APV		=	6.18.01
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)

#SC_URL=http://freshmeat.net/redir/tcsh/10304/url_tgz/tcsh-6.12.00.tar.gz
SC_URL  = http://freshmeat.net/redir/tcsh/10304/url_tgz/$(SC_VRM).tar.gz
# http://ftp.teledanmark.no/pub/unix/tcsh-6.10.tar.gz
# http://freshmeat.net/projects/tcsh/
# http://freshmeat.net/redir/tcsh/10304/url_tgz/tcsh-6.12.00.tar.gz
# http://freshmeat.net/redir/tcsh/10304/url_tgz/tcsh-6.13.00.tar.gz
#SC_URL		=	ftp://ftp.gw.com/pub/unix/tcsh/$(SC_VRM).tar.gz
SC_URL	      = ftp://ftp.funet.fi/pub/unix/shells/tcsh/$(SC_VRM).tar.gz
#SC_URL    = ftp://ftp.funet.fi/pub/unix/shells/tcsh/old/$(SC_VRM).tar.gz
#
#     * ftp://ftp.astron.com/pub/tcsh/ [US]
#     * ftp://ftp.gw.com/pub/unix/tcsh/ [US]
#     * ftp://ftp.funet.fi/pub/unix/shells/tcsh/ [Finland]
#

SC_CONFIG	=	./configure --prefix=/usr

SC_FIXUP	=	\
		  if [ -h /usr/bin/csh ] ; then rm /usr/bin/csh ; fi ; \
		ln -s tcsh /usr/bin/csh

