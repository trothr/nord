#
#
#	  Name: procps.mk
#		make include file for PROC PS for La Casita
#
#

#SC_VRM		=	procps-2.0.11 ... preferred
#SC_VRM		=	procps-3.0.5
#SC_VRM		=	procps-3.1.5
#SC_VRM		=	procps-3.1.9
#SC_VRM		=	procps-3.1.15 ... available
#SC_VRM		=	procps-3.2.1
#SC_VRM		=	procps-3.2.4
#SC_VRM		=	procps-3.2.5
#SC_VRM		=	procps-3.2.6
#SC_VRM		=	procps-3.2.7
SC_VRM		=	procps-3.2.8
# NOTE: probably requires make-3.79.1

#SC_URL=http://tech9.net/rml/procps/packages/2.0.11/procps-2.0.11.tar.gz
#SC_URL		=	http://procps.sourceforge.net/$(SC_VRM).tar.gz
#SC_URL = http://unc.dl.sourceforge.net/sourceforge/procps/$(SC_VRM).tar.gz
#SC_URL = http://umn.dl.sourceforge.net/sourceforge/procps/$(SC_VRM).tar.gz
SC_URL		=	\
 http://procps.sourceforge.net/$(SC_VRM).tar.gz \
 http://superb-west.dl.sourceforge.net/sourceforge/procps/$(SC_VRM).tar.gz

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	true
SC_BUILD	=	$(MAKE) SHARED=0
#SC_FIXUP	=	
SC_INSTALL	=	$(MAKE) SHARED=0 install


# NOTE: 'top' requires <libintl.h>
#	but would like to relieve this requirement


