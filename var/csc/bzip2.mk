#
#
#	  Name: bzip2.mk
#		CSCRATCH make include file for BZIP2 for NORD
#
#

SC_APN		=	bzip2
SC_APV		=	1.0.6
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)

#
#SC_URL = ftp://sources.redhat.com/pub/bzip2/v102/bzip2-1.0.2.tar.gz
#SC_URL	= ftp://sources.redhat.com/pub/bzip2/v103/bzip2-1.0.3.tar.gz
SC_URL		=	http://www.bzip.org/$(SC_APV)/$(SC_VRM).$(SC_ARC)
# http://riksun.riken.go.jp/pub/pub/Linux/slackware/slackware-current/source/a/bzip2/$(SC_VRM).tar.gz
# http://sources.redhat.com/pub/bzip2/v106/bzip2-1.0.6.tar.gz

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	true
#SC_BUILD	=	
SC_INSTALL	=	rm -f /usr/bin/bzegrep /usr/bin/bzfgrep \
				/usr/bin/bzless /usr/bin/bzcmp ; \
			$(MAKE) install PREFIX=/usr
SC_FIXUP	=	strip /usr/bin/bzip2 \
				/usr/bin/bzcat /usr/bin/bzip2recover


