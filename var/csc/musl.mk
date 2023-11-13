#
#
#         Name: musl.mk
#         Date: 2023-04-24 (Monday) and prior
#
#

SC_APN		=	musl
#SC_APV		=	1.1.20
#SC_APV		=	1.1.21
#SC_APV		=	1.1.22
#SC_APV		=	1.2.1
#SC_APV		=	1.2.2
#SC_APV		=	1.2.3
SC_APV		=	1.2.4
#SC_ARC		=	tar.gz
SC_ARC		=	tar.xz
SC_VRM		=	$(SC_APN)-$(SC_APV)
SC_URL		=	http://www.musl-libc.org/releases/$(SC_VRM).$(SC_ARC) \
			http://www.musl-libc.org/releases/$(SC_VRM).$(SC_ARC).asc

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).asc
#gpg --keyserver hkp://pool.sks-keyservers.net/ --recv-keys 0x56bcdb593020450f

#SC_FETCH	=
#SC_SOURCE	=	$(SC_VRM)
SC_CONFIG	=	./configure --prefix=/usr --disable-nls
#SC_BUILD	=
#SC_FIXUP	=
#SC_INSTALL	=


