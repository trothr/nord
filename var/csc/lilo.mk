#
#
#	  Name: lilo.mk
#		make include file for LILO for La Casita
#
#

#SC_VRM		=	lilo-21.4.3
#SC_VRM		=	lilo-22.3.4
#SC_VRM		=	lilo-22.8
SC_VRM		=	lilo-23.2

#SC_URL		=   http://www.elliott-turbo.com/lilo/lilo-21.4.3.tar.gz
#SC_URL		=	\
# http://www.ibiblio.org/pub/Linux/system/boot/lilo/$(SC_VRM).src.tar.gz \
# http://www.ibiblio.org/pub/Linux/system/boot/lilo/$(SC_VRM).src.tar.gz.sig
SC_URL		=	\
	http://lilo.alioth.debian.org/ftp/sources/$(SC_VRM).tar.gz \
	http://lilo.alioth.debian.org/ftp/sources/$(SC_VRM).tar.gz.asc \
	http://lilo.alioth.debian.org/ftp/sources/$(SC_VRM).tar.gz.sha

#SC_FETCH	=	wget --passive-ftp $(SC_URL) ; \
#			ln -s $(SC_VRM).src.tar.gz $(SC_VRM).tar.gz

#SC_SOURCE	=	
SC_CONFIG	=	true
SC_BUILD	=	make all
#SC_FIXUP	=	strip ...
#SC_INSTALL	=	


# REQ bin86 (includes 'as86' and 'ld86')
# REQ sharutils (includes 'uudecode')

# LILO version 21, Copyright 1992-1998 Werner Almesberger
#Author:	Werner Almesberger <werner.almesberger@lrc.di.epfl.ch>
#URL=ftp://lrcftp.epfl.ch/pub/linux/local/lilo/lilo-20.tar.gz,
#ftp://lrcftp.epfl.ch/pub/linux/local/lilo/lilo-u-20.ps.gz,
#ftp://lrcftp.epfl.ch/pub/linux/local/lilo/lilo-t-20.ps.gz
#URL=ftp://sunsite.unc.edu/pub/Linux/system/boot/lilo/lilo-20.tar.gz,
#ftp://sunsite.unc.edu/pub/Linux/system/boot/lilo/lilo-u-20.ps.gz,
#ftp://sunsite.unc.edu/pub/Linux/system/boot/lilo/lilo-t-20.ps.gz
#Platforms:	Linux 0.99pl12 or newer, gcc and as86 needed to compile.
#		LaTeX and (optionally) Perl and Transfig needed to print
#		the documentation.



#lilo-21.lsm
#lilo-21.tar.gz
#lilo-t-21.ps.gz
#lilo-u-21.ps.gz
#lilo-21.CHANGES
#/linux/tsx-11.mit.edu/packages/lilo/
#http://jumbo.kfki.hu/linux/tsx-11.mit.edu/packages/lilo/



