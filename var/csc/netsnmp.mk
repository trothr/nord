# 
# 
#	  Name: snmp.mk 
#		make include file for SNMP for La Casita 
# 
# 

#SC_VRM		=	ucd-snmp-4.2.5
#SC_VRM = ucdsnmp-4.0.1
#SC_VRM = ucdsnmp-4.0.1-46
#SC_VRM		=	net-snmp-5.3.0.1-25.15
#http://freshmeat.net/projects/net-snmp/
#http://site.n.ml.org/download/20060114020441/net-snmp/net-snmp-5.3.0.1.tar.gz
#http://acelnmp.googlecode.com/files/net-snmp-5.4.2.1.tar.gz

#http://www.net-snmp.org/download.html
#http://www.net-snmp.org/net-snmp-admin.asc
# mirrors: iweb, surfnet
XX_VRM		=	5.6.1.1
SC_VRM		=	net-snmp-$(XX_VRM)
SC_URL		=	\
 http://surfnet.dl.sourceforge.net/project/net-snmp/net-snmp/$(XX_VRM)/$(SC_VRM).tar.gz \
 http://surfnet.dl.sourceforge.net/project/net-snmp/net-snmp/$(XX_VRM)/$(SC_VRM).tar.gz.asc

SC_CONFIG	=	./configure --prefix=/usr --disable-nls \
				--sysconfdir=/etc --enable-ipv6 \
		--with-default-snmp-version=3 \
		--with-logfile=/var/log/snmpd.log \
		--with-sys-contact=root@localhost \
		--with-sys-location=local \
		--with-persistent-directory=/var/run/snmp

# requires R/W access to Perl architecture dependent library tree


