/*
 *        Name: ccstatic.c (C source)
 *        Date: 2017-Feb-4 (Friday)
 *              This program is a wrapper arounc 'cc' or 'gcc'
 *              with the sole purpose of adding the "-static" option.
 *              It turned out that doing this simple hack in a
 *              shell script (see below) is prone to quoting errors.
 */

#include <stdio.h>
#include <libgen.h>
#include <unistd.h>

int main(int argc,char*argv[])
  {
    char *arg0, sub0[256], *subv[256];
    int  rc, i, j;

    arg0 = basename(argv[0]);
    (void) snprintf(sub0,sizeof(sub0),"/usr/bin/%s",arg0);
/*  (void) printf("argv[0]='%s'\n",sub0); */

    subv[0] = sub0;
    subv[1] = "-static";
    i = 1; j = 2;
    while (argc > 1) { subv[j++] = argv[i++]; argc--; }
    subv[j] = NULL;

    rc = execv(sub0,subv);

    return rc;
  }


/*
	#!/bin/sh
	Z=`basename $0`
	exec /usr/bin/$Z -static $*
 */


