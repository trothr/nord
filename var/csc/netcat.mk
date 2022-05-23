# 
# 
#	  Name: netcat.mk 
#		make include file for netcat for La Casita 
# 
# 
 
#SC_VRM		=	netcat-1.10
#SC_URL		=	\
# http://umn.dl.sourceforge.net/sourceforge/nc110/nc110.tgz
#SC_FETCH	=	cscgetsf.sh nc110/nc110.tgz

SC_VRM		=	netcat-0.7.1
SC_URL		=	\
 http://umn.dl.sourceforge.net/sourceforge/netcat/netcat-0.7.1.tar.gz \
 http://netcat.sourceforge.net/signatures/netcat-0.7.1.tar.gz.asc
# http://netcat.sourceforge.net/signatures/md5sums.txt
# http://netcat.sourceforge.net/b2d79fc1.asc
SC_FETCH	=	cscgetsf.sh netcat/netcat-0.7.1.tar.gz ; \
	wget --passive-ftp --no-clobber --timeout=3 --tries=1 \
	http://netcat.sourceforge.net/signatures/netcat-0.7.1.tar.gz.asc

#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr
#SC_INSTALL	=	
SC_FIXUP	=	strip /usr/bin/netcat
 

