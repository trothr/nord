#
#
#	  Name: coreutils.mk
#		CSCRATCH make include file for GNU COREUTILS for NORD
#
#

SC_APN		=	coreutils
SC_APV		=	8.27
SC_ARC		=	tar.xz
SC_VRM		=	$(SC_APN)-$(SC_APV)
# need a patch to fix new default behavior ignoring /etc/mtab

#		replaces shutils-2.0 fileutils-4.1 textutils-2.1
#		Specifically, this package includes:
#		arch base64 basename cat chcon chgrp chmod chown chroot
#		cksum comm cp csplit cut date dd df dir dircolors dirname
#		du echo env expand expr factor false flock fmt fold groups
#		head hostid id install join link ln logname ls md5sum
#		mkdir mkfifo mknod mktemp mv nice nl nohup nproc od paste
#		pathchk pinky pr printenv printf ptx pwd readlink rm rmdir
#		runcon sha*sum seq shred sleep sort split stat stty sum
#		sync tac tail tee test timeout touch tr true truncate
#		tsort tty uname unexpand uniq unlink users vdir wc who
#		whoami yes

SC_URL		=	\
	http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
	http://ftp.gnu.org/pub/gnu/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0xdf6fd971306037d9

#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	FORCE_UNSAFE_CONFIGURE=1 ; \
			export FORCE_UNSAFE_CONFIGURE ; \
		./configure --prefix=/usr --disable-nls --enable-mtab
#			--enable-no-install-program=coreutils,hostname
#SC_BUILD	=	
SC_FIXUP	=	strip /usr/bin/basename /usr/bin/chroot \
				/usr/bin/date /usr/bin/dirname \
				/usr/bin/echo /usr/bin/env \
				/usr/bin/expr /usr/bin/factor \
				/usr/bin/false /usr/bin/hostid \
				/usr/bin/id \
				/usr/bin/logname /usr/bin/nice \
				/usr/bin/pathchk /usr/bin/pinky \
				/usr/bin/printenv /usr/bin/printf \
				/usr/bin/pwd /usr/bin/seq \
				/usr/bin/sleep /usr/bin/stty \
				/usr/bin/tee \
				/usr/bin/test /usr/bin/true \
				/usr/bin/tty /usr/bin/uname \
				/usr/bin/uptime /usr/bin/users \
				/usr/bin/who /usr/bin/whoami \
				/usr/bin/yes ; \
			strip /usr/bin/chgrp \
				/usr/bin/chmod /usr/bin/chown \
				/usr/bin/cp /usr/bin/dd \
				/usr/bin/df /usr/bin/dir \
				/usr/bin/dircolors /usr/bin/du \
				/usr/bin/install /usr/bin/ln \
				/usr/bin/ls /usr/bin/mkdir \
				/usr/bin/mkfifo /usr/bin/mknod \
				/usr/bin/mv /usr/bin/rm \
				/usr/bin/rmdir /usr/bin/shred \
				/usr/bin/sync /usr/bin/touch \
				/usr/bin/vdir ; \
			strip /usr/bin/cksum /usr/bin/comm \
				/usr/bin/csplit /usr/bin/cut \
				/usr/bin/expand /usr/bin/fmt \
				/usr/bin/fold /usr/bin/head \
				/usr/bin/join /usr/bin/md5sum \
				/usr/bin/nl /usr/bin/od \
				/usr/bin/paste /usr/bin/pr \
				/usr/bin/ptx /usr/bin/sha1sum \
				/usr/bin/sort /usr/bin/split \
				/usr/bin/sum /usr/bin/tac \
				/usr/bin/tail /usr/bin/tr \
				/usr/bin/tsort /usr/bin/unexpand \
				/usr/bin/uniq /usr/bin/wc /usr/bin/cat
#SC_INSTALL	=	


