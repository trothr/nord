#
#
#         Name: cpio.mk
#               CSCRATCH make rules file stub for CPIO for NORD
#         Date: 2018-May-28 (Mon)
#
#

SC_APN          =       cpio
#SC_APV         =       2.12
SC_APV          =       2.13
SC_ARC          =       tar.bz2
SC_VRM          =       $(SC_APN)-$(SC_APV)

SC_SOURCE       =       $(SC_VRM)

SC_URL          =       \
            https://ftp.gnu.org/gnu/$(APPLID)/$(SC_SOURCE).$(SC_ARC) \
            https://ftp.gnu.org/gnu/$(APPLID)/$(SC_SOURCE).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
# gpg --keyserver hkp://pool.sks-keyservers.net/ --recv-keys 0x3602b07f55d0c732

#SC_FETCH       =

SC_CONFIG       =       ./configure --prefix=/usr

#SC_BUILD       =
#SC_INSTALL     =
#SC_FIXUP       =
SC_FIXUP        =       strip /usr/bin/cpio /usr/libexec/rmt


