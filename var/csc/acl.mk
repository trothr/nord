#
#
#         Name: acl.mk
#               CSCRATCH make rules file stub for ACL for NORD
#
#

#APPLID         =       acl
SC_APN          =       acl
SC_APV          =       2.2.52
SC_ARC          =       tar.gz
SC_VRM          =       $(SC_APN)-$(SC_APV).src
SC_URL          =       \
 http://download.savannah.nongnu.org/releases/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
 http://download.savannah.nongnu.org/releases/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0xnnnnnnnnnnnnnnnn

#SC_FETCH       =
SC_SOURCE       =       $(SC_APN)-$(SC_APV)

SC_CONFIG       =       ./configure --prefix=/usr

#SC_BUILD       =
#SC_INSTALL     =
#SC_FIXUP       =


