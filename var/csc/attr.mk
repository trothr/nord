#
#
#         Name: attr.mk
#               make include file for ATTR for La Casita
#         Date: 2023-04-24 (Monday) and prior
#
#

SC_APN          =       attr
#SC_APV         =       2.4.0
SC_APV          =       2.4.48
SC_VRM          =       $(SC_APN)-$(SC_APV)
SC_SOURCE       =       $(SC_VRM)

SC_ARC          =       tar.gz
#SC_ARC         =       tar.bz2
#SC_ARC         =       tar.xz

SC_URL          =       \
 http://download.savannah.nongnu.org/releases/$(SC_APN)/$(SC_SOURCE).$(SC_ARC) \
 http://download.savannah.nongnu.org/releases/$(SC_APN)/$(SC_SOURCE).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_SOURCE).$(SC_ARC).sig

SC_FETCH        =       wget --passive-ftp --no-clobber \
                                        --no-check-certificate $(SC_URL)

SC_CONFIG       =       ./configure --prefix=/usr \
					--enable-static --disable-shared

SC_BUILD        =       $(MAKE)
SC_BUILDX       =       $(MAKE)
SC_BUILDD       =       $(SC_SOURCE)

SC_INSTALL      =       $(MAKE) install
SC_FIXUP        =       strip /usr/bin/attr /usr/bin/getfattr /usr/bin/setfattr

APPLID          =       $(SC_APN)

#SC_PROXY       =       --socks4a 127.0.0.1:9050
#SC_REQ         =


