# 2013-09-29 dlc	Replaced libelf with elfutils, added xz
# 2013-09-27 dlc	Merged shutils, fileutils, and textutils into coreutils
# 2013-09-30 dlc	Add support for CSCRATCH patches during src build
# 2913-10-04 dlc	Added lzip





STAGE1PKGS	=	m4 flex bison make sed grep gawk coreutils \
			diffutils findutils \
			patch tar gzip texinfo gperf perl bash \
			libtool zlib autoconf automake binutils gcc \
			gettext db elfutils ncurses glibc xz lzip

STAGE1LFS	=	gzip bzip2 tar patch coreutils \
			diffutils findutils \
			bash gawk grep make sed texinfo utillinux \
			binutils gcc
# bzip2 utillinux in LFS stage 1 but not other stage 1

STAGE1NONLS	=	tar grep bison make coreutils \
			findutils diffutils texinfo gawk

#STAGE2PKGS same set as STAGE1PKGS per SNOWDROP (BMC)
# "cscratch" is an in-place build
# "stage 2" is used by a relocating build such as SNOWDROP

STAGE3PKGS	=	modutils utillinux sendmail file ntp \
			e2fsprogs


BASEURL 	=	http://www.casita.net/pub/cscratch



.PHONY: clean cycle VRMLIST VRMINSTALLED

.SUFFIXES: .mk .src .cfg .exe .ins .inv

.SECONDARY:

#%.mk :   /proc/1
#%.mk :   makefile
#	test ! -z "$(EDITOR)"
#	sh -c ' exec $(EDITOR) $@ '

%.mk :
	wget -q $(BASEURL)/$@

_generic.mk :
	wget -q $(BASEURL)/$@

#.mk.arc :
%.arc : %.mk
	@echo	$(MAKE) APPLID=`basename $@ .arc` -f _generic.mk archive
		@$(MAKE) APPLID=`basename $@ .arc` -f _generic.mk archive
# target is $@ ; source is $<

#.mk.src :
%.src : %.mk _generic.mk
	@echo	$(MAKE) APPLID=`basename $@ .src` -f _generic.mk source
		@$(MAKE) APPLID=`basename $@ .src` -f _generic.mk source
#			$@ is the full filename of the target
#			$< is the full filename of the dependency

#.src.cfg :
%.cfg : %.src
	@echo	$(MAKE) APPLID=`basename $@ .cfg` -f _generic.mk config
		@$(MAKE) APPLID=`basename $@ .cfg` -f _generic.mk config

#.cfg.exe :
%.exe : %.cfg
	@echo	$(MAKE) APPLID=`basename $@ .exe` -f _generic.mk
		@$(MAKE) APPLID=`basename $@ .exe` -f _generic.mk

#.exe.ins :
%.ins : %.exe
	@echo	$(MAKE) APPLID=`basename $@ .ins` -f _generic.mk install
		@$(MAKE) APPLID=`basename $@ .ins` -f _generic.mk install

#.exe.inv :
%.inv : %.ins %.exe
	@echo	$(MAKE) APPLID=`basename $@ .inv` -f _generic.mk inventory
		@$(MAKE) APPLID=`basename $@ .inv` -f _generic.mk inventory

#
# HTML for doc
%.html : %.ins
	@echo	$(MAKE) APPLID=`basename $@ .html` -f _generic.mk HTML
		@$(MAKE) APPLID=`basename $@ .html` -f _generic.mk HTML

#
#
_default:
		@echo "$(MAKE): specify something to make!"
		@sh -c ' exit 24 '

#
#
all:
		for A in $(STAGE1PKGS) ; do \
			echo "	$(MAKE) APPLID=$$A -f _generic.mk " ; \
			$(MAKE) APPLID=$$A -f _generic.mk ; \
			done

#
#
makefiles:
		test ! -z "$(EDITOR)"
		for A in $(STAGE1PKGS) ; do $(EDITOR) $$A.mk ; done

#
#
source:
		for A in $(STAGE1PKGS) ; do \
			$(MAKE) APPLID=$$A -f _generic.mk source ; \
			done

#
#
config:
		for A in $(STAGE1PKGS) ; do \
			$(MAKE) APPLID=$$A -f _generic.mk config ; \
			done

#
#
install:
		for A in $(STAGE1PKGS) ; do \
			$(MAKE) APPLID=$$A -f _generic.mk install ; \
			done

#
#
check:
		for A in $(STAGE1PKGS) ; do \
			$(MAKE) APPLID=$$A -f _generic.mk check ; \
			done

#
#
clean:
		for A in $(STAGE1PKGS) ; do \
			$(MAKE) APPLID=$$A -f _generic.mk clean ; \
			done

#
#
stripped:
		find /usr/bin -type f -links 1 -print \
			| xargs file | grep ELF | grep executable \
			| grep 'not stripped' | awk -F: '{print $$1}' \
			| xargs strip

#
#
lfs1:
		@for A in $(STAGE1LFS) ; do \
	echo		$(MAKE) APPLID=$$A -f _generic.mk install ; \
			$(MAKE) APPLID=$$A -f _generic.mk install ; \
			done

listed:
		for A in `ls -d *.mk \
			| awk -F. '{print $$1}' \
			| grep -v '^_generic$$' \
			| grep -v '^kernel$$'` ; do \
			echo $(MAKE) APPLID=$$A -f _generic.mk install ; \
			$(MAKE) APPLID=$$A -f _generic.mk install ; \
			done

db :
		$(MAKE) APPLID=$@ -f _generic.mk install
#m4 flex bison make sed grep gawk coreutils \
#diffutils findutils \
#patch tar gzip texinfo gperf perl bash \
#libtool zlib autoconf automake binutils gcc \
#gettext db elfutils ncurses glibc xz lzip



# ALTERNATIVES
# yacc-91.7.30-137 (for bison)

lfs-ins:	autoconf.ins automake.ins \
		bash.ins bin86.ins binutils.ins \
		bison.ins bzip2.ins diffutils.ins \
		e2fsprogs.ins ed.ins file.ins coreutils.ins \
		flex.ins gawk.ins gcc.ins gettext.ins glibc.ins \
		grep.ins groff.ins gzip.ins kbd.ins less.ins \
		libtool.ins lilo.ins m4.ins make.ins man.ins \
		manpages.ins modutils.ins ncurses.ins netkit.ins \
		nettools.ins patch.ins perl.ins procinfo.ins \
		procps.ins psmisc.ins sed.ins shadow.ins \
		sysklogd.ins tar.ins texinfo.ins \
		utillinux.ins vim.ins zlib.ins \
		makedev.ins kernel.ins lfsbootscripts.ins

gnu-ins:	autoconf.ins automake.ins \
		bash.ins bc.ins binutils.ins \
		bison.ins cpio.ins cvs.ins diffutils.ins \
		doschk.ins e2fsprogs.ins ed.ins elispmanual.ins \
		emacs.ins coreutils.ins findutils.ins flex.ins \
		from.ins g77.ins gawk.ins gcal.ins gcc.ins gdb.ins \
		gettext.ins glibc.ins gmp.ins gnuchess.ins gnugo.ins \
		gnumach.ins grep.ins grub.ins gzip.ins hello.ins \
		hurd.ins indent.ins inetutils.ins less.ins libg++.ins \
		lynx.ins m4.ins make.ins miscfiles.ins ncurses.ins \
		nethack.ins nvi.ins patch.ins perl.ins ptx.ins rcs.ins \
		readline.ins recode.ins sed.ins sendmail.ins \
		sharutils.ins tar.ins termutils.ins \
		texinfo.ins time.ins wdiff.ins

cycle:
		@mkdir -p cycle
		cp -p *.ins cycle/.
		sh -c ' cd cycle ; exec ls -dt *.ins ' \
			| tail -1 | awk -F. '{print $$1}' > cycle.tmp
		@echo "	rm -f `cat cycle.tmp`.ins `cat cycle.tmp`.exe \
			`cat cycle.tmp`.cfg `cat cycle.tmp`.src"
		rm -f `cat cycle.tmp`.ins `cat cycle.tmp`.exe \
			`cat cycle.tmp`.cfg `cat cycle.tmp`.src
		echo "	$(MAKE) `cat cycle.tmp`.src"
		$(MAKE) `cat cycle.tmp`.src
		echo "	$(MAKE) `cat cycle.tmp`.cfg"
		$(MAKE) `cat cycle.tmp`.cfg
		echo "	$(MAKE) `cat cycle.tmp`.exe"
		$(MAKE) `cat cycle.tmp`.exe
		echo "	$(MAKE) `cat cycle.tmp`.ins"
		$(MAKE) `cat cycle.tmp`.ins
		@rm cycle.tmp



VRMLIST:
	@grep '^SC_VRM' *.mk | awk -F'=' '{print $$2}'

VRMINSTALLED:
	@grep '.-.' *.ins | awk -F: '{print $$2}'

/etc/cscpackages:
	cat *.ins > /etc/cscpackages
	@rm -f /usr/opt/*-*.inv
	ls -d /usr/opt/*-* >> /etc/cscpackages




