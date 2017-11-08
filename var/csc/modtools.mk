#
#
#	  Name: modtools.mk
#		make include file for Module and INIT Tools
#		(replaces "modutils" package)
#
#

#SC_VRM		=	module-init-tools-3.5
SC_VRM		=	module-init-tools-3.15
#SC_URL		=	\
# http://www.kernel.org/pub/linux/kernel/people/rusty/modules/$(SC_VRM).tar.gz \
# http://www.kernel.org/pub/linux/kernel/people/rusty/modules/$(SC_VRM).tar.sign
SC_URL		=	\
 http://www.kernel.org/pub/linux/utils/kernel/module-init-tools/$(SC_VRM).tar.gz \
 http://www.kernel.org/pub/linux/utils/kernel/module-init-tools/$(SC_VRM).tar.gz.sign
#SC_FETCH	=	
#SC_SOURCE	=	
SC_CONFIG	=	./configure --prefix=/usr
#SC_BUILD	=	
#SC_FIXUP	=	
#SC_INSTALL	=	



