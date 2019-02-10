#
#
#	  Name: _generic.mk (make rules file)
#		rules any single generic CSCRATCH package
#
#

PREFIX		=	/usr/opt
SYSTEM		=	`uname -s`

SC_VRM		=	ERROR-VRM

SC_URL		=	ERROR-URL

SC_ARC		=	tar.gz

#			Standard repository URL prot/host/dir URL Strings:
SC_US1		=	ftp://aeneas.mit.edu/pub/gnu
SC_US2		=	http://prdownloads.sourceforge.net
SC_US3		=	ftp://mirror.anl.gov/pub/gnu

SC_PROXY	=	--socks4a 127.0.0.1:9050

#SC_FETCH	=	wget --passive-ftp --no-clobber $(SC_URL)
#SC_FETCH	=	wget --continue -N --passive-ftp $(SC_URL)

#SC_FETCH	=	wget --timestamping --passive-ftp $(SC_URL)
#SC_FETCH	=	curl --remote-time --ftp-pasv --remote-name \
				$(SC_PROXY) $(SC_URL)
SC_FETCH	=	wget --timestamping --passive-ftp \
				--no-check-certificate $(SC_URL)

#SC_FETCH_BZ	=	wget --passive-ftp --no-clobber $(SC_URL) ...
SC_FETCH_BZ	=	wget --passive-ftp $(SC_URL) ; \
		bzcat $(SC_VRM).tar.bz2 | gzip > $(SC_VRM).tar.gz ; \
			touch -r $(SC_VRM).tar.bz2 $(SC_VRM).tar.gz
# stop using SC_FETCH_BZ and instead specify SC_ARC

SC_SOURCE	=	$(SC_VRM)
SC_BUILDD	=	$(SC_SOURCE)

#SC_CONFIG	=	./configure --prefix=$(PREFIX)/$(SC_VRM)
SC_CONFIG	=	./configure
#SC_CONFIG	=	./configure --prefix=/usr

SC_BUILD	=	$(MAKE)
SC_BUILDX	=	$(MAKE)

SC_INSTALL	=	$(MAKE) install

SC_FIXUP	=	

.PHONY : clean

.SUFFIXES: .mk .src .cfg .exe .ins .inv

include $(APPLID).mk

ifeq		($(SC_ARC),tar.gz)
					SC_TAR = tar xzf
endif
ifeq		($(SC_ARC),tar.bz2)
					SC_TAR = tar xjf
endif
ifeq		($(SC_ARC),tar.xz)
					SC_TAR = tar xJf
endif
ifeq		($(SC_ARC),tar.lz)
					SC_TAR = tar --lzip -xf
endif

_default:	all

#archive:	arc/$(SC_VRM).tar.gz
#archive:	arc/$(APPLID)/$(SC_VRM).tar.gz
archive:	arc/$(APPLID)/$(SC_VRM).$(SC_ARC)

source: 	$(APPLID).src

config: 	$(APPLID).cfg

all:		$(APPLID).exe

install:	$(APPLID).ins

inventory:	$(APPLID).inv

HTML:		$(APPLID).html

check:
		@echo "$(MAKE): ... checking ..."
		@test ! -z "$(APPLID)"
		@test ! -z "$(SC_VRM)"
		@test ! -z "$(SC_SOURCE)"
		@test ! -z "$(SC_BUILDD)"
		@echo "APPLID=$(APPLID) ; VRM=$(SC_VRM)"
		@echo "$(MAKE): ... checking done"

$(APPLID).ins:	$(APPLID).exe
		@test ! -z "$(APPLID)"
		@test ! -z "$(SC_VRM)"
		@test ! -z "$(SC_SOURCE)"
		@test ! -z "$(SC_BUILDD)"
		@test ! -z "$(SC_INSTALL)"
		@rm -f $(SC_VRM).ins $(APPLID).ins
		test -d "$(SC_SOURCE)"
		test -d "$(SC_BUILDD)"
#		sh -c ' cd $(SC_SOURCE) ; $(SC_INSTALL) '
		sh -c ' cd $(SC_BUILDD) ; $(SC_INSTALL) '
	     if [ ! -z "$(SC_FIXUP)" ] ; then sh -c " $(SC_FIXUP) " ; fi
		yes | rm -rf $(SC_SOURCE) $(SC_BUILDD)
#		find / /usr -xdev -newer $(APPLID).exe > $(APPLID).inv
#		touch $(SC_VRM).ins $(APPLID).ins
#		touch $(APPLID).ins
		echo "$(SC_VRM)" > $(APPLID).ins

$(APPLID).exe:	$(APPLID).cfg
		@test ! -z "$(APPLID)"
		@test ! -z "$(SC_VRM)"
		@test ! -z "$(SC_SOURCE)"
		@test ! -z "$(SC_BUILDD)"
		@test ! -z "$(SC_BUILD)"
		@rm -f $(SC_VRM).exe $(APPLID).exe
		test -d "$(SC_SOURCE)"
		test -d "$(SC_BUILDD)"
#		sh -c ' cd $(SC_SOURCE) ; $(SC_BUILD) '
		sh -c ' cd $(SC_BUILDD) ; $(SC_BUILD) '
#		touch $(SC_VRM).exe $(APPLID).exe
#		touch $(APPLID).exe
		echo "$(SC_VRM)" > $(APPLID).exe

$(APPLID).cfg:	$(APPLID).src
		@test ! -z "$(APPLID)"
		@test ! -z "$(SC_VRM)"
		@test ! -z "$(SC_SOURCE)"
		@test ! -z "$(SC_BUILDD)"
		@test ! -z "$(SC_CONFIG)"
		@rm -f $(SC_VRM).cfg $(APPLID).cfg
		test -d "$(SC_SOURCE)"
		mkdir -p "$(SC_BUILDD)"
#		sh -c ' cd $(SC_SOURCE) ; $(SC_CONFIG) '
		sh -c ' cd $(SC_BUILDD) ; $(SC_CONFIG) '
#		touch $(SC_VRM).cfg $(APPLID).cfg
#		touch $(APPLID).cfg
		echo "$(SC_VRM)" > $(APPLID).cfg

#$(APPLID).src:	arc/$(SC_VRM).tar.gz
#$(APPLID).src:	arc/$(APPLID)/$(SC_VRM).tar.gz
#$(APPLID).src:	arc/$(APPLID)/$(SC_VRM).$(SC_ARC)
$(APPLID).src:	$(APPLID).mk arc/$(APPLID)/$(SC_VRM).$(SC_ARC)
		@test ! -z "$(APPLID)"
		@test ! -z "$(SC_VRM)"
		@test ! -z "$(SC_SOURCE)"
		@test ! -z "$(SC_BUILDD)"
		@rm -f $(SC_VRM).src $(APPLID).src
#
		if [ ! -z "$(SC_SOURCE_VERIFY)" ] ; then \
			sh -c ' $(SC_SOURCE_VERIFY) ' ; fi
#
		@echo "$(MAKE): [re]making the source tree ..."
		rm -rf $(SC_SOURCE) $(SC_VRM) $(SC_BUILDD)
#		tar xzf arc/$(SC_VRM).tar.gz
#		tar xzf arc/$(APPLID)/$(SC_VRM).tar.gz
		$(SC_TAR) arc/$(APPLID)/$(SC_VRM).$(SC_ARC)
		test -d $(SC_SOURCE)
		@chmod -R +w $(SC_SOURCE)
		@echo "$(MAKE): processing any patches ..."
#		./cscpatch.sh $(SC_VRM)
		./cscpatch.sh $(SC_SOURCE)
#		touch $(SC_VRM).src $(APPLID).src
#		touch $(APPLID).src
		echo "$(SC_VRM)" > $(APPLID).src

#arc/$(SC_VRM).tar.gz:
#arc/$(APPLID)/$(SC_VRM).tar.gz:
arc/$(APPLID)/$(SC_VRM).$(SC_ARC):
		@test ! -z "$(APPLID)"
		@echo "$(MAKE): need source for '$(APPLID)' ..."
		@test ! -z "$(SC_VRM)"
		@echo "$(MAKE): downloading '$(SC_VRM)' source ..."
#		@mkdir -p arc
		@mkdir -p arc/$(APPLID)
#		@test -d arc
		@test -d arc/$(APPLID)
#		sh -c ' cd arc ; $(SC_FETCH) '
		sh -c ' cd arc/$(APPLID) ; $(SC_FETCH) '
#		@test -s arc/$(SC_VRM).tar.gz
#		@test -s arc/$(APPLID)/$(SC_VRM).tar.gz
		@test -s arc/$(APPLID)/$(SC_VRM).$(SC_ARC)

#$(APPLID).ins:  $(APPLID).exe
#		@test ! -z "$(APPLID)"
#		@test ! -z "$(SC_VRM)"
#		@test ! -z "$(SC_SOURCE)"
#		@test ! -z "$(SC_INSTALL)"
#		@test ! -d $(SYSTEM)
#		@test ! -d $(PREFIX)/$(SC_VRM)
#		@rm -f $(SC_VRM).ins $(APPLID).ins
#		test -d $(PREFIX)
#		@test -w $(PREFIX)
#		rm -f $(SYSTEM) $(PREFIX)/$(SC_VRM)
#		mkdir $(SYSTEM)
#		sh -c ' cd $(SYSTEM) ; exec \
#			ln -s `pwd` $(PREFIX)/$(SC_VRM) '
#		@test -d $(PREFIX)/$(SC_VRM)/.
#		sh -c ' cd $(SC_SOURCE) ; exec $(SC_INSTALL) '
#		@rm $(PREFIX)/$(SC_VRM)
#		touch $(SC_VRM).ins $(APPLID).ins
#		touch $(APPLID).ins

$(APPLID).inv:	$(APPLID).ins $(APPLID).exe
#		find / /usr -xdev -type f \
#			-newer $(APPLID).exe -print > $(APPLID).inv
		df / /opt /usr /bin /lib* /var /etc | tail -n +2 \
			| awk '{print $$6}' | uniq | sort | uniq \
			| xargs echo find | awk '{print $$0 , \
		"-xdev -type f -newer $(APPLID).exe -print"}' | sh \
			> $(APPLID).inv

$(APPLID).html:  $(APPLID).ins _generic.mk makefile
	@test ! -z "$(APPLID)"
	@test ! -z "$(SC_VRM)"
#	@test ! -z "$(SC_SOURCE)"
#	@test ! -z "$(SC_BUILDD)"
	@echo "<html>"                                   > $(APPLID).tmp
	@echo "<head>"                                  >> $(APPLID).tmp
	@echo "<title>$(APPLID)</title>"                >> $(APPLID).tmp
	@echo "</head>"                                 >> $(APPLID).tmp
	@echo "<body><ul>"                              >> $(APPLID).tmp
	@echo "<li>package <tt>$(APPLID)</tt>"          >> $(APPLID).tmp
	@echo "<li>version $(SC_VRM)"                   >> $(APPLID).tmp
	@echo "<li>download <tt>$(SC_URL)</tt>"         >> $(APPLID).tmp
	@echo "<li>configure <tt>$(SC_CONFIG)</tt>"     >> $(APPLID).tmp
	@echo "<li>build <tt>$(SC_BUILD)</tt>"          >> $(APPLID).tmp
	@date +"<li>built <tt>%Y-%b-%d</tt>" \
			-r $(APPLID).exe                >> $(APPLID).tmp
	@echo "</ul></body>"                            >> $(APPLID).tmp
	@echo "</html>"                                 >> $(APPLID).tmp
	@mv $(APPLID).tmp $(APPLID).html

clean:
		@test ! -z "$(APPLID)"
		@test ! -z "$(SC_VRM)"
		@test ! -z "$(SC_SOURCE)"
		@test ! -z "$(SC_BUILDD)"
		rm -f $(SC_VRM).src $(SC_VRM).cfg \
			$(SC_VRM).exe $(SC_VRM).ins
		if [ -d $(SC_SOURCE) ] ; then \
			sh -c ' cd $(SC_SOURCE) ; exec $(MAKE) clean ' ; fi
		if [ -d $(SC_BUILDD) ] ; then \
			sh -c ' cd $(SC_BUILDD) ; exec $(MAKE) clean ' ; fi

distclean:
		@test ! -z "$(APPLID)"
		@test ! -z "$(SC_VRM)"
		@test ! -z "$(SC_SOURCE)"
		@test ! -z "$(SC_BUILDD)"
		rm -f $(SC_VRM).src $(SC_VRM).cfg \
			$(SC_VRM).exe $(SC_VRM).ins
		rm -rf $(SC_SOURCE) $(SC_BUILDD)

#
# installed requies executable
# executable requies config
# config requires source
# source requires archive (tarball)
#


