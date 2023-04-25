#
#
#	  Name: cdrtools.mk
#		make include file for CD Record Tools for La Casita
#         Date: 2023-04-24 (Monday) and prior
#
#

#SC_VRM		=	cdrtools-2.00.3
SC_VRM		=	cdrtools-2.01
#SC_VRM		=	cdrtools-3.00

#SC_URL		=     ftp://ftp.berlios.de/pub/cdrecord/$(SC_VRM).tar.gz
#     http://freshmeat.net/redir/cdrecord/35795/url_tgz/$(SC_VRM).tar.gz
SC_URL=http://gd.tuwien.ac.at/utils/schilling/cdrtools/$(SC_VRM).tar.gz

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	true
SC_BUILD	=	exec $(MAKE) INS_BASE=/usr DEFINSUSR=root DEFINSGRP=root
SC_INSTALL	=	exec $(MAKE) INS_BASE=/usr DEFINSUSR=root DEFINSGRP=root install
#SC_FIXUP	=	

#SC_CONFIG	=	rm -f /opt/schily
#SC_INSTALL	=	ln -s ../usr /opt/schily ; \
#			exec $(MAKE) install
#SC_FIXUP	=	rm /opt/schily

# http://freshmeat.net/projects/cdrecord/
# replaces cdrecord, mkisofs, and probably cdrdao
# may also replace vcdimager, cdparanoia, cdk, or zisofs


