#SC_VRM = sharutil-4.2c
#SC_VRM = sharutils-4.2.1
#SC_VRM = sharutils-4.11.1
#SC_VRM = sharutils-4.13.5
SC_VRM = sharutils-4.15.2
#SC_URL = http://ftp.gnu.org/pub/gnu/sharutils/$(SC_VRM).tar.gz
SC_URL = http://ftp.gnu.org/gnu/sharutils/$(SC_VRM).tar.gz \
         http://ftp.gnu.org/gnu/sharutils/$(SC_VRM).tar.gz.sig
#         http://ftp.gnu.org/gnu/sharutils/$(SC_VRM).md5sum \
#         http://ftp.gnu.org/gnu/sharutils/$(SC_VRM).md5sum.sig
SC_CONFIG = ./configure --prefix=/usr
# /usr/bin/shar /usr/bin/unshar /usr/bin/uuencode /usr/bin/uudecode

