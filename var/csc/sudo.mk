#
#
#         Name: sudo.mk
#               make include file for SU DO for La Casita CSCRATCH
#         Date: 2023-04-24 (Monday) and prior
#
#

#SC_VRM         =       sudo-1.6.9p16
#SC_URL         =       \
# ftp://ftp.zedz.net/pub/security/host-security/sudo/$(SC_VRM).tar.gz \
# ftp://ftp.zedz.net/pub/security/host-security/sudo/$(SC_VRM).tar.gz.sig
#SC_VRM         =       sudo-1.6.9p17
#SC_URL         =       \
# http://ftp.freebsd.org/pub/FreeBSD/ports/local-distfiles/tmclaugh/sudo/$(SC_VRM).tar.gz
#SC_VRM         =       sudo-1.6.9p18
#SC_URL         =       \
# http://www.hensa.ac.uk/sites/ftp.wiretapped.net/pub/security/host-security/sudo/$(SC_VRM).tar.gz \
# http://www.hensa.ac.uk/sites/ftp.wiretapped.net/pub/security/host-security/sudo/$(SC_VRM).tar.gz.sig

SC_APN          =       sudo
#SC_APV         =       1.9.5p2
SC_APV          =       1.9.10
SC_VRM          =       $(APPLID)-$(SC_APV)
#SC_SOURCE      =       $(SC_VRM)

SC_ARC          =       tar.gz

SC_URL          =    https://www.sudo.ws/dist/$(SC_SOURCE).$(SC_ARC) \
                     https://www.sudo.ws/dist/$(SC_SOURCE).$(SC_ARC).sig

#SC_SOURCE_VERIFY = gpg --verify arc/$(SC_SOURCE).$(SC_ARC).sig
#gpg --keyserver hkp://pool.sks-keyservers.net/ --recv-keys 0xa9f4c021cea470fb

#SC_FETCH       =       

#SC_CONFIG      =       ./configure --prefix=/usr
#SC_FIXUP       =       
#SC_INSTALL     =       $(MAKE) install

#SC_BUILDX      =               $(MAKE)
#SC_BUILDD      =               $(SC_SOURCE)
#SC_PROXY       =

SC_SHARED       =       man
SC_REQ          =       package-v.r.m


