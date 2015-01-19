/*                                                                    *
 *                                                                    *
 *        Name: WGET REXX or CURL REXX                                *
 *        Date: 2006-Mar-02                                           *
 *              This program is part of the CMS Make package.         *
 *       Calls: WEBROVER REXX when it cannot handle a given URL.      *
 *                                                                    *
 *                                                                    */

make_version = "2.0.22"

/* if no other output, attach console */
'STREAMSTATE OUTPUT'
If rc = 4 Then rc = 0
If rc = 8 Then rc = 0
If rc = 12 Then 'ADDPIPE *.OUTPUT: | CONSOLE'
If rc /= 0 Then Exit rc

verbose = 0
outfile = ""
trans = 1

/* parse command-line and options */
Parse Source cms cmd argu . . arg0 .
Parse Arg args
Parse Var args arg1 .
Do While Left(arg1,1) = "-"
  Parse Var args . args
  Select
    /* shorter option nomenclature may cange between CURL and WGET */
    When argu = "CURL" & Abbrev("-s",arg1,2) Then verbose = 0
    When argu = "CURL" & Abbrev("-o",arg1,2) Then Parse Var args outfile args
    When argu = "WGET" & Abbrev("-q",arg1,2) Then verbose = 0
    When argu = "WGET" & Abbrev("-nv",arg1,3) Then verbose = 0
    When argu = "WGET" & Abbrev("-O",arg1,2) Then Parse Var args outfile args
    When   /* both */    Abbrev("-v",arg1,2) Then verbose = 1
    When Abbrev("--silent",arg1,8) Then verbose = 0
    When Abbrev("--non-verbose",arg1,13) Then verbose = 0
    When Abbrev("--verbose",arg1,9) Then verbose = 1
    When Abbrev("--binary",arg1,5) Then trans = 0
    When Abbrev("--ascii",arg1,5) Then trans = 1
    When Abbrev("--text",arg1,6) Then trans = 1
    When Abbrev("--output",arg1,8) Then Parse Var args outfile args
    When Abbrev("-h",arg1,2) | Abbrev("--help",arg1,6) Then Do
      'CALLPIPE COMMAND HELP CMS' argu '(NOSCREEN' ,
        '| NLOCATE 1.10 /DMSHLL355I/ | UNIQ | *.OUTPUT:'
      Exit rc
    End /* When .. Do */
    When Abbrev("--version",arg1,9) Then Do
      'CALLPIPE VAR MAKE_VERSION' ,
        '| SPEC /CMS Make/ NW W 1 NW /' || argu || '/ NW | *.OUTPUT:'
      Exit 0
    End /* When .. Do */
    Otherwise Do
      Address "COMMAND" 'XMITMSG 3 ARG1 (ERRMSG CALLER URL'
      Exit 24
    End /* Otherwise Do */
  End /* Select */
  Parse Var args arg1 .
End /* Do While */
If argu = "CURL" & outfile = "" Then outfile = "-"

/* load standard ASCII <--> EBCDIC translation */
'CALLPIPE STATE POSIX TCPXLBIN'
If rc = 28 Then Address "COMMAND" 'EXEC VMLINK TCPMAINT 592'
'CALLPIPE < POSIX TCPXLBIN | STEM TCP.'
If rc /= 0 Then Return rc ;  a2e = tcp.2 ;  e2a = tcp.3

/* get essential config info - like the stack name */
'CALLPIPE < TCPIP DATA | STRIP' ,
  '| NLOCATE 1.1 /;/ | STEM TCF.'
If rc /= 0 Then Return rc
tcp.id = "TCPIP"
Do i = 1 to tcf.0
  Parse Upper Var tcf.i cf c1 .
  Select
    When Abbrev("TCPIPUSERID",cf,6) Then tcp.id = c1
    Otherwise nop
  End /* Select */
End /* Do For */

/* step through command line list-o-URLs */
Do While args /= ""
  Parse Var args furl args
  Parse Var furl mode '://' host '/' file
  port = ""
  user = ""
  pass = ""
  If POS('@',host) > 0 Then Parse Var user '@' host
  If POS(':',host) > 0 Then Parse Var host ':' port
  If POS(':',user) > 0 Then Parse Var user ':' pass
  Upper mode
  file = "/" || file
  If port = "" Then port = 80
  If verbose Then Do
    Say "PROTOCOL" mode
    Say "USERNAME" user
    Say "PASSWORD" pass
    Say "    HOST" host
    Say "    PORT" port
    Say "FILENAME" file
  End /* If .. Do */

  /* CALL OUT HERE */
  Select /* mode */
    When mode = "HTTP" Then Parse Value ,
      url_http(user,pass,host,port,file,outfile,trans) With rc rs
    When mode = "FTP" Then Parse Value ,
      viarover(furl,outfile,trans) With rc rs
    Otherwise Do
/*    Address "COMMAND" 'XMITMSG 15 MODE (ERRMSG CALLER URL'          */
      Address "COMMAND" 'XMITMSG 475 MODE (ERRMSG CALLER URL'
/*    Address "COMMAND" 'XMITMSG 2481 MODE (ERRMSG CALLER URL'        */
      Exit 24 ;  End
  End /* Select */

  If rc /= 0 Then Exit rc

End

Exit


/* ------------------------------------------------------------ URL_HTTP
 */
url_http: Procedure Expose tcp. ;  a2e = tcp.2 ;  e2a = tcp.3
Parse Arg user,pass,host,port,file,outfile,trans,.
Parse Var file file ";" .   /* might look for ";type=A" to mean ASCII */

/* add a stream for HTTP header handling if not already there */
Trace Off
'STREAMSTATE INPUT HTTP'
If rc = -4 Then 'ADDSTREAM HTTP'
Trace Normal

If Verify(host,"0123456789.") > 0 Then Do
  /* 'CALLPIPE VAR HOST | HOSTBYNAME | VAR ADDR' */
  /* a fix from phsiii */
  'CALLPIPE VAR HOST | HOSTBYNAME | SPECS w1 1 | VAR ADDR'
  If rc /= 0 Then Return rc
End /* If .. Do */
Else addr = host

If outfile = "" Then outfile = basename(file)

/* determine output to file or stream */
Parse Upper Var outfile fn '.' ft '.' .
If fn = "" Then fn = Userid()
If ft = "" & trans Then ft = "TXT"
If ft = "" Then ft = "BIN"
If fn = "-" Then pipe = "*.OUTPUT:"
            Else pipe = 'PAD 1 | >' fn ft 'A'

/* build a proper HTTP request */
req.1 = "GET" file "HTTP/1.0"
req.2 = "Host:" host
req.3 = "Accept: */*"
req.4 = ""
req.0 = 4

/* now drive it either with or without translation */
a2ex = "X" || C2X(a2e)
e2ax = "X" || C2X(e2a)
'ADDPIPE' ,
    '*.OUTPUT.HTTP: | TCPCLIENT' addr port ,
                      'LINGER 7 USERID' tcp.id 'DEBLOCK LINEND 0A' ,
                   '| *.INPUT.HTTP:'
If rc /= 0 Then Return rc

/* send the request header then read the response header */
'CALLPIPE (END !) STEM REQ.' ,
  '| E2A: XLATE | SPEC 1-* 1 x0D0A N' ,
  '| *.OUTPUT.HTTP:',
  '! STRLITERAL' e2ax '| E2A:'

/* consume the response header */
'SELECT INPUT HTTP'
size = 0
i = 0
Do Forever
  'PEEKTO RECORD'
  If rc /= 0 Then Leave
  Parse Var record record '0D'x
  If record = "" Then Leave
  i = i + 1 ; h.i = Translate(record,a2e)
  Parse Upper Var h.i key val .
  If key = "CONTENT-LENGTH:" Then size = val
  'READTO'
End
If rc = 12 Then rc = 0
If rc /= 0 Then Do
  _rc = rc
  'SELECT INPUT 0'
  Return _rc
End
h.0 = i
'READTO'
/* Say "size indicated is" size */

If trans Then 'CALLPIPE (END !) *.INPUT.HTTP:' ,
  '| STRIP TRAILING x0D | A2E: XLATE | CHANGE xB0 x5F' ,
  '|' pipe ,
  '! STRLITERAL' a2ex  '| A2E:'
         Else 'CALLPIPE         *.INPUT.HTTP:' ,
  '| SPEC 1-* N x0A N' ,
  '|' pipe
_rc = rc
'SEVER INPUT' ; 'SEVER OUTPUT'

'SELECT INPUT 0'

Return _rc


/* ------------------------------------------------------------ VIAROVER
 *  For some URLs, just punt to WEBROVER, assuming it is present.
 */
viarover: Procedure Expose tcp. ;  a2e = tcp.2 ;  e2a = tcp.3
Parse Arg f . , o . , t . , .

/* force WEBROVER into binary mode */
If o = "" Then o = basename(f)
f = f || ";binary"
/* this is a sure way to remove HTTP headers from files retrieved */

/* determine output to file or stream */
Parse Upper Var o fn '.' ft '.' .
If fn = "" Then fn = Userid()
If ft = "" & t Then ft = "TXT"
If ft = "" Then ft = "BIN"
If fn = "-" Then pipe = "*.OUTPUT:"
            Else pipe = 'PAD 1 | >' fn ft 'A'

/* now drive it either with or without translation */
If t Then ,
'CALLPIPE (END !) VAR F | WEBROVER | DEBLOCK LINEND 0A' ,
  '| STRIP TRAILING x0D | A2E: XLATE | CHANGE xB0 x5F' ,
  '|' pipe ,
  '! VAR A2E | A2E:'
Else 'CALLPIPE VAR F | WEBROVER |' pipe

Return rc


/* ------------------------------------------------------------ BASENAME
 */
basename: Procedure
Parse Arg file . , .
file = Reverse(file)
Parse Var file file '/' .
Return Reverse(file)


