#
#
#	  Name: inetutils.mk
#		CSCRATCH make include file for INET Utils for NORD
#
#

APPLID		=	inetutils
#SC_VRM		=	inetutils-1.4.2
#SC_VRM		=	inetutils-1.8
SC_APN          =       inetutils
SC_APV          =       2.4
SC_VRM          =       $(SC_APN)-$(SC_APV)

SC_ARC          =       tar.xz
#SC_URL		=      http://ftp.gnu.org/gnu/$(APPLID)/$(SC_VRM).tar.gz
SC_URL		=      http://ftp.gnu.org/gnu/$(APPLID)/$(SC_VRM).$(SC_ARC)

SC_CONFIG	=	./configure --prefix=/usr

#SC_INSTALL	=	rm -f /usr/local ; ln -s . /usr/local ; \
#			$(MAKE) install

SC_FIXUP	=	strip /usr/bin/ftp /usr/bin/logger \
	/usr/bin/ping /usr/bin/rcp /usr/bin/rlogin /usr/bin/rsh \
	/usr/bin/telnet /usr/bin/tftp /usr/bin/whois \
	/usr/libexec/ftpd /usr/libexec/inetd /usr/libexec/rexecd \
	/usr/libexec/rlogind /usr/libexec/rshd /usr/libexec/syslogd \
	/usr/libexec/talkd /usr/libexec/telnetd /usr/libexec/tftpd \
	/usr/libexec/uucpd
#	/usr/bin/talk 




