#
#
#
#
#

FILES	=	usropt.rtf releases.rtf nordauto.rtf xmasgift.rtf \
			cscratch.rtf nordplan.rtf srctrust.rtf
TEXTS	=	usropt.txt releases.txt nordauto.txt xmasgift.txt \
			cscratch.txt nordplan.txt srctrust.txt
MARKDOWN =	hierarchy.md


#
# Using 'wget' to pull files from Google Drive (fka Google Docs)
#
# FID: the filename or ID as saved locally
# FMT: the format (same as filename extension)
# URL: the long URL of that file as known to Google
#
#	wget -O $FID.$FMT $URL/export?format=$FMT
#


_default:
	@echo "$(MAKE): specify something to make!"
	@sh -c ' exit -1 '

all:	$(FILES) $(MARKDOWN)

texts:	$(TEXTS) $(MARKDOWN)


#
# NORD Portable Apps build method, formerly "NORD /usr/opt"
usropt.rtf:
	wget -O usropt.rtf \
 https://docs.google.com/document/d/1QBsK--hq6qHOBpKCMQYln4qck39xfi7s1FTL73G-7VM/export?format=rtf
usropt.txt:
	wget -O usropt.txt \
 https://docs.google.com/document/d/1QBsK--hq6qHOBpKCMQYln4qck39xfi7s1FTL73G-7VM/export?format=txt

#
# NORD-releases
releases.rtf:
	wget -O releases.rtf \
 https://docs.google.com/document/d/1Q3b6oAx2QL310FozVFI9qRRRJmZhOC_KawTay9nbpZ4/export?format=rtf
releases.txt:
	wget -O releases.txt \
 https://docs.google.com/document/d/1Q3b6oAx2QL310FozVFI9qRRRJmZhOC_KawTay9nbpZ4/export?format=txt

#
# NORDAUTO
nordauto.rtf:
	wget -O nordauto.rtf \
 https://docs.google.com/document/d/1QQQ4xV51lZkisQEK307B4A1AvU_YtG6eNd7QazQCnFs/export?format=rtf
nordauto.txt:
	wget -O nordauto.txt \
 https://docs.google.com/document/d/1QQQ4xV51lZkisQEK307B4A1AvU_YtG6eNd7QazQCnFs/export?format=txt

#
# MEMO XMASGIFT
xmasgift.rtf:
	wget -O xmasgift.rtf \
 https://docs.google.com/document/d/10zc4Z8VrwTBEcQK1L1G9n2J6jMakUEQs_uUNB9G11U8/export?format=rtf
xmasgift.txt:
	wget -O xmasgift.txt \
 https://docs.google.com/document/d/10zc4Z8VrwTBEcQK1L1G9n2J6jMakUEQs_uUNB9G11U8/export?format=txt

#
# NORD Source Trust
srctrust.rtf:
	wget -O srctrust.rtf \
 https://docs.google.com/document/d/11AaYxnPO0Ej8Gd_HtW4Ru320rsPEcKfex2oDoRCcFkA/export?format=rtf
srctrust.txt:
	wget -O srctrust.txt \
 https://docs.google.com/document/d/11AaYxnPO0Ej8Gd_HtW4Ru320rsPEcKfex2oDoRCcFkA/export?format=txt

#
# NORD CSCRATCH build method
cscratch.rtf:
	wget -O cscratch.rtf \
 https://docs.google.com/document/d/1Qf9GJrfCP1h8IoK1XfyRqeBHn5dpbTvzTGipfkJBN10/export?format=rtf
cscratch.txt:
	wget -O cscratch.txt \
 https://docs.google.com/document/d/1Qf9GJrfCP1h8IoK1XfyRqeBHn5dpbTvzTGipfkJBN10/export?format=txt

#
# NORD Linux -or- NORD Scratch Linux (suitable as a flyer or glossy)
nordplan.rtf:
	wget -O nordplan.rtf \
 https://docs.google.com/document/d/1QQyCdRe4oHvxFv_23u1DX1rO7EVzhreB6zC3OoCPycM/export?format=rtf
nordplan.txt:
	wget -O nordplan.txt \
 https://docs.google.com/document/d/1QQyCdRe4oHvxFv_23u1DX1rO7EVzhreB6zC3OoCPycM/export?format=txt

#
# NORD Overview
#https://docs.google.com/document/d/1mwIMqmf1f2xd3pTHeCw7vhaodxECZizus2js9gt95H4

#
# NORD Linux to-do

#
# NORD FHS Hierarchy and Layout
hierarchy.md:
	wget https://raw.githubusercontent.com/trothr/nord/master/doc/$@

#
# sharedfs


clean:
	@rm -f $(FILES) $(TEXTS)


# parent folder
#https://drive.google.com/drive/folders/

# NORD folder
#https://drive.google.com/drive/folders/0B7AkQhEvbQZfMmVkMzIwMDctM2EyMi00MzBhLWIzYTktOGYyY2EzNGFiYzg3

# etc folder
#https://drive.google.com/drive/folders/0B7AkQhEvbQZfNWIwMmQ1NTktMjZmMS00Mjg1LTk3NGYtZWVlMDFmYmVlM2Ri

# correlation
#https://docs.google.com/a/casita.net/document/d/[googleid]/[function]
#https://docs.google.com/document/d/[googleid]/[function]


