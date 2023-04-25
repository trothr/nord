#
#
#         Name: zsh.mk
#               CSCRATCH make include file for ZSH for La Casita
#         Date: 2023-04-24 (Monday) and prior
#
#

#SC_VRM         =       zsh-4.1.1
#SC_VRM         =       zsh-4.2.0
#SC_VRM         =       zsh-4.3.9
#SC_VRM         =       zsh-4.3.16
#SC_VRM         =       zsh-5.8

SC_APN          =       zsh
#SC_APV         =       5.8.1
SC_APV          =       5.9
SC_ARC          =       tar.xz
SC_VRM          =       $(SC_APN)-$(SC_APV)

#SC_URL         =   http://www.zsh.org/pub/zsh/old/$(SC_VRM).tar.gz \
#                   http://www.zsh.org/pub/zsh/old/$(SC_VRM)-doc.tar.gz
#SC_URL         =   http://www.zsh.org/pub/old/$(SC_VRM).tar.gz \
#                   http://www.zsh.org/pub/old/$(SC_VRM)-doc.tar.gz
SC_URL         = https://www.zsh.org/pub/old/$(SC_VRM).$(SC_ARC) \
                 https://www.zsh.org/pub/old/$(SC_VRM).$(SC_ARC).asc \
                 https://www.zsh.org/pub/old/$(SC_VRM)-doc.$(SC_ARC) \
                 https://www.zsh.org/pub/old/$(SC_VRM)-doc.$(SC_ARC).asc

#SC_FETCH       =       
#SC_SOURCE      =       

#SC_CONFIG      =       ./configure --prefix=/usr
SC_CONFIG       =       ./configure --prefix=/usr \
                                --without-tcsetpgrp

#SC_BUILD       =       
#SC_FIXUP       =       strip ...
#SC_INSTALL     =       


