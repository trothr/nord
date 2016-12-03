#
#
#	  Name: sysvinit.mk
#		CSCRATCH make include file for SystemV INIT for La Casita
#
#

#SC_VRM		=	sysvinit-2.83
#SC_VRM		=	sysvinit-2.84
#SC_VRM		=	sysvinit-2.85
#SC_VRM		=	sysvinit-2.86
SC_VRM		=	sysvinit-2.88dsf

#SC_URL		=	\
# http://slackware.dsi.internet2.edu/slackware_source/a/sysvinit/sysvinit-2.84.tar.gz \
# http://slackware.dsi.internet2.edu/slackware_source/a/sysvinit/sysvinit-2.84.lsm
#SC_URL		=	\
# ftp://ftp.cistron.nl/pub/people/miquels/software/$(SC_VRM).tar.gz \
# http://sunsite.unc.edu/pub/Linux/system/daemons/init/$(SC_VRM).tar.gz
# http://gd.tuwien.ac.at/utils/sys/sysvinit/sysvinit-2.86.tar.gz
SC_URL=http://download.savannah.gnu.org/releases/sysvinit/sysvinit-2.88dsf.tar.bz2

SC_FETCH	=	$(SC_FETCH_BZ)

#SC_SOURCE	=	
SC_CONFIG	=	true
SC_BUILD	=	cd src ; $(MAKE)
SC_INSTALL	=	cd src ; $(MAKE) install
#SC_FIXUP	=	

#URL=ftp://ftp.cistron.nl/pub/people/miquels/software/sysvinit-2.84.tar.gz
#URL=ftp://sunsite.unc.edu/pub/Linux/system/daemons/init/sysvinit-2.84.tar.gz
#
# LSM listed sites:
#URL=ftp.cistron.nl/pub/people/miquels/software/sysvinit-2.84.tar.gz
#URL=sunsite.unc.edu/pub/Linux/system/daemons/init/sysvinit-2.84.tar.gz



