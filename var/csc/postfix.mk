#
#
#	  Name: postfix.mk
#		make include file for POSTFIX for NORD
#
#

SC_VRM		=	postfix-2.10.2

SC_URL		=	\
 http://ftp.porcupine.org/mirrors/postfix-release/official/$(SC_VRM).HISTORY \
 http://ftp.porcupine.org/mirrors/postfix-release/official/$(SC_VRM).RELEASE_NOTES \
 http://ftp.porcupine.org/mirrors/postfix-release/official/$(SC_VRM).tar.gz.sig \
 http://ftp.porcupine.org/mirrors/postfix-release/official/$(SC_VRM).tar.gz

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	$(MAKE) -f Makefile.init makefiles \
						AUXLIBS="-lpthread"
#SC_BUILD	=	
SC_INSTALL	=	yes '' | $(MAKE) install ; \
			chmod +x postfix-install ; \
			yes '' | ./postfix-install -non-interactive
SC_FIXUP	=	strip /usr/libexec/postfix/bounce \
				/usr/libexec/postfix/cleanup \
				/usr/libexec/postfix/error \
				/usr/libexec/postfix/flush \
				/usr/libexec/postfix/lmtp \
				/usr/libexec/postfix/local \
				/usr/libexec/postfix/master \
				/usr/libexec/postfix/nqmgr \
				/usr/libexec/postfix/pickup \
				/usr/libexec/postfix/pipe \
				/usr/libexec/postfix/proxymap \
				/usr/libexec/postfix/qmgr \
				/usr/libexec/postfix/qmqpd \
				/usr/libexec/postfix/showq \
				/usr/libexec/postfix/smtp \
				/usr/libexec/postfix/smtpd \
				/usr/libexec/postfix/spawn \
				/usr/libexec/postfix/trivial-rewrite \
				/usr/libexec/postfix/virtual \
				/usr/sbin/sendmail \
				/usr/sbin/postalias \
				/usr/sbin/postcat \
				/usr/sbin/postconf \
				/usr/sbin/postfix \
				/usr/sbin/postkick \
				/usr/sbin/postlock \
				/usr/sbin/postlog \
				/usr/sbin/postmap \
				/usr/sbin/postsuper \
				/usr/sbin/postdrop \
				/usr/sbin/postqueue

#
#     Warning: you still need to edit myorigin/mydestination/mynetworks
#     parameter settings in /etc/postfix/main.cf.
#
#     See also http://www.postfix.org/faq.html for information about dialup
#     sites or about sites inside a firewalled network.
#
#     BTW: Check your /etc/aliases file and be sure to set up aliases
#     that send mail for root and postmaster to a real person, then run
#     /usr/bin/newaliases.
#

# http://www.unixwiz.net/techtips/building-source.html

# http://www.linuxfromscratch.org/blfs/view/svn/server/postfix.html

SC_REQ		=	db.ins # db-6.0.20


