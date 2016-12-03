#!/bin/sh
#	Process any patch files for the SC_VRM specified
set +xv

files=`ls ${PWD}/${1}.patch[1-9][0-9][0-9][0-9][0-9][0-9][0-3][0-9] 2>/dev/null`
[ "${files}" = '' ] && exit 0 || set -e ; for i in ${files} ; do ${i} ; done 


