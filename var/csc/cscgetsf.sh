#!/bin/sh
#

for SFM in	\
	http://aleron.dl.sourceforge.net/sourceforge/		\
	http://easynews.dl.sourceforge.net/sourceforge/		\
	http://heanet.dl.sourceforge.net/sourceforge/		\
	http://internap.dl.sourceforge.net/sourceforge/		\
	http://kent.dl.sourceforge.net/sourceforge/		\
	http://nchc.dl.sourceforge.net/sourceforge/		\
	http://superb-west.dl.sourceforge.net/sourceforge/	\
	http://switch.dl.sourceforge.net/sourceforge/		\
	http://twtelecom.dl.sourceforge.net/sourceforge/	\
	http://umn.dl.sourceforge.net/sourceforge/		\
	http://unc.dl.sourceforge.net/sourceforge/		\
	http://voxel.dl.sourceforge.net/sourceforge/		\
	http://superb-dca2.dl.sourceforge.net/sourceforge/		\
		; do

  wget --passive-ftp --no-clobber --timeout=3 --tries=1 "${SFM}$1"

done

exit

http://ftp.easysw.com/pub/$(APPLID)/$(SC_VRM)/$(SC_VRM).tar.gz


