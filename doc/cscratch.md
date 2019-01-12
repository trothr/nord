# CSCRATCH (Casita From-Scratch)

This document describes CSCRATCH, an in-place system build mechanism.

## What is CSCRATCH?

The name CSCRATCH is a contraction of "Casita Scratch". 
It is a from-scratch build scheme, simply a wrapper around 'make' and the standard recipe. 

CSCRATCH is used in NORD Linux but is not restricted to either NORD or Linux. 
It can coexist with Your Favorite Distro: You can use it to build or rebuild 
packages on ClefOS, SUSE, RedHat, FreeBSD, theoretically any POSIX platform. 
Given a working POSIX or POSIX-like system, you can rebuild, replace, 
or upgrade many of its component packages with fresh versions from source. 

CSCRATCH consists of a makefile and a collection of stub makefiles 
which are officially available at ... 

http://www.casita.net/pub/cscratch/

The make logic creates marker files for each step in building a package: 
source extracted, package configured, compiled, and installed. There is 
a “stub” rules file for each package. The result is that any package 
can be downloaded, compiled, and installed with just a single command. 

CSCRATCH attempts to stay as close as possible to the original Internet 
sources. All Linux distributions, even Debian (as re-doable as it is), 
have their own substantial modifications to the package sources. 
CSCRATCH has few or none. 

For the history books, yes there was a BSCRATCH. 

CSCRATCH has no knowledge of package managers. It will install a software 
package that your package manager does not know about. It will replace 
the components of a software package that your package manager does know about. 


## How Does One Use CSCRATCH?

Using CSCRATCH is easy: 

* download the makefile 
* build one or more packages 

All needed files, rules stubs, sources, are downloaded automatically. 
Sources are kept so that a re-build of any package happens without a 
re-visit to the download site(s). Marker files are created as each 
step completes. 

As an example, say you wanted to update BASH in response to the Shellshock 
bug. (Also assume that the bash.mk stub on the official site is up-to-date, 
which for this discussion is correct.) Simply run these commands. 

    mkdir /var/csc
    cd /var/csc
    wget http://www.casita.net/pub/cscratch/makefile
    make bash.ins

The /var/csc directory is convention, not a requirement. 
/var/csc directory is the home directory for user “nord” in NORD. 

bash.mk is retrieved automatically. 
It has the knowledge about where to find the BASH source code and patches, 
and how to build it. 


## What Packages Does CSCRATCH Support?

Theoretically, any FOSS package can be handled with CSCRATCH. 
What is needed is per-package knowledge: where to find it, how to compile it. 
(See below section “Adding Packages to CSCRATCH”. Contributions welcome!) 

For each package to be built/installed with CSCRATCH, there is a 
“.mk” stub file. The most recently used stubs are … 

 autoconf.mk automake.mk bash.mk bc.mk bison.mk bzip2.mk coreutils.mk curl.mk 
 dash.mk diffutils.mk e2fsprogs.mk ed.mk file.mk findutils.mk flex.mk gawk.mk 
 gettext.mk glibc.mk grep.mk gzip.mk less.mk libtool.mk m4.mk make.mk nano.mk 
 ncurses.mk netsnmp.mk patch.mk pdksh.mk pkgconfig.mk procps.mk pth.mk 
 readline.mk rsync.mk screen.mk sed.mk shadow.mk sharutils.mk sudo.mk 
 sysklogd.mk sysvinit.mk tar.mk tcsh.mk texinfo.mk utillinux.mk vim.mk 
 wget.mk which.mk xinetd.mk xz.mk zlib.mk zsh.mk

The complete collection, including many untested and out-of-date stubs, 
is at the aforementioned web site. 


## Is There A Release Plan for CSCRATCH?

There is no version/release/mod number for CSCRATCH. 
There is no release plan or road map. 
Packages are added as knowledge about each is gathered. 
Individual packages have their own versioning. 
Individual make stubs for CSCRATCH are upgraded as needs require and as time allows. 


## Adding Packages to CSCRATCH

To add a package to CSCRATCH, create a rules stub file for that package. 
This file must have an extension of ".mk" and must at least set SC_VRM 
and SC_URL.  Variables set in this stub file include: 

`SC_VRM`
The default is SC_APN, dash, and SC_APV. Leave it this way if possible. 

`SC_APN`
There is no default. This is the package name, e.g. “bash”. 

`SC_APV`
There is no default. This is the package version, e.g. “4.3.30”. 

`SC_ARC`
This is the package archive extension, e.g. tar.gz. 

`SC_URL`
There is no default.  This URL indicates where the source may be downloaded. 
The URL string may contain more than one file and often includes a 
cryptographic signature file. 

`SC_FETCH`
The command to retrieve the source. The default is 'wget' and the URL. 

`SC_SOURCE`
This is the name of the source directory. By default it is set to $(SC_VRM). 

`SC_BUILDD`
This is the name of the build directory. By default it is set to $(SC_SOURCE). 

`SC_CONFIG`
This is the command to configure the package. The default is './configure' 
but sometimes you may need './configure --prefix=/usr'. 

`SC_BUILD`
This is the command to build the package. The default is simply 'make'. 

`SC_INSTALL`
This is the command to install the package. The default is 'make install'. 

`SC_FIXUP`
This command performs any post processing after installation. 
The default is no fixup post processing. 

Using XZ as an example, the stub would look something like ... 

    SC_APN    =    xz
    SC_APV    =    5.2.2
    SC_ARC    =    tar.gz
    SC_VRM    =    $(SC_APN)-$(SC_APV)

    SC_URL    =   \
     http://www.tukaani.org/$(SC_APN)/$(SC_VRM).$(SC_ARC) \
     http://www.tukaani.org/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig \
     http://www.tukaani.org/misc/lasse_collin_pubkey.txt

    SC_CONFIG    =    ./configure --prefix=/usr

Name the stub file “xz.mk” and do a ‘make xz.ins’. Voi-la! 

An important additional step is verifying the archive signature. 
In the above example, we do download the signature, but CSCRATCH 
will not use it unless SC_SOURCE_VERIFY defines a command to do so. 

    SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig

In this example, the public key for XZ is found in “lasse_collin_pubkey.txt”, 
*but you should vet all public keys manually*. There’s no way around personal 
action when establishing initial trust. 


## `nord-build-csc` script

The steps for building a package with CSCRATCH are automated in a shell script. 
‘nord-build-csc’ handles all of the complexity described above for 
more than 100 packages. The script requires ‘sudo’ and related authorization 
as well as a build user “nord”. On NORD systems, this ID exists and is authorized. 

‘nord-build-csc’ will find the stub makefile for the indicated package, 
download it, and walk it through its paces. The source, configure, and 
build steps are done as user “nord”. The install step is done as user “root”. 

CSCRATCH can share an archive hierarchy with Chicory. 


## NORD docs

This file is part of the collection found on GitHub at ...

https://github.com/trothr/nord/tree/master/doc

Also see the Chicory project ...

https://github.com/trothr/chicory/

*this page “NORD CSCRATCH” last updated 2019-Jan-12 (Saturday) by RMT*


