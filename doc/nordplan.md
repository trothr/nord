# NORD Scratch Linux

NORD is a minimalist computer operating system, JeOS (Just Enough OS), 
suitable as a base for server, desktop*, or embedded systems. 
It starts fast and runs light. It uses the Linux kernel 
and related 
packages. 

## NORD Features

NORD is a from-scratch computer operating system using the Linux kernel, 
many of the GNU utilities (particularly GLIBC), designed for utility 
and efficiency. It is especially well suited for use as a server, 
for development, and for rescue or embedded work. NORD is designed 
with virtualization in mind. 

## NORD design points:

* reduced packaging, goes directly to the package authors/maintainers
* shortened trust chain (going directly to source code publishers)
* enforced source trust (for signed packages)
* reduced cross-dependency (packages built for NORD can run on 
other distros)
* minimal preload and default startup (only runs what you 
tell it to run)
* designed for appliance readiness, embedded or virtual 

## NORD Linux features: 

* reduced dependency on shared libraries 
(packages built on NORD easily used on other systems)
* 32-bit system for simplicity and for speed (64-bit builds 
are under development)
* more than fifty packages built directly from original 
"tarball" sources
* /lib/modules is sym-linked to /boot/modules, 
so that kernel modules go with kernel (under /boot)
* reads a profile from CMS, if available (useful on z/VM hosts)
* REXX is standard (two flavors supplied)
* THE for an XEDIT workalike, plus other popular editors
* BASH, of course, and five other popular command shells
* fully self-hosting (you can rebuild it yourself) 
on S390 and I386 and PPC
* avoids partitioning when it's not meaningful

Fastest booting Linux apart from NSS (and yet supports NSS, 
which makes it even faster). 
Minimal start-up: YOU decide what you want to run. 

## NORD Rationale

With so many operating systems, and so many variants of Linux, 
why use NORD?
Some motivations for NORD are ...

   * demonstrate replaceable core operating system
   * showcase the standard recipe
   * showcase CSCRATCH generic build scheme
   * showcase Chicory flexible packaging scheme
   * a build platform for Chicory packages
   * a build platform for experiment and QA
   * a build platform with reduced dependency hell
   * a source based system
   * simplified core system
   * layered/modular system*
   * showcase shared disk and shared filesystems

NORD uses CSCRATCH for direct-from-maintainer source code 
and tighter source trust. 

NORD uses Chicory for flexible supplemental packages. 

NORD tries hard to not be yet another distro. 
("We don't need another distro" to the tune of 
"What the World Needs Now") 
It works well on ice. (Good for frozen configurations, 
that is CD, DVD, or other R/O media.) 

*Does not ship a GUI, but can run most GUI environments 
on top of the text mode core. 

## NORD Philosophy

The following was prompted by stali goals. 
Their commitment to stemming the tide of bloat is commendable, 
but they lack a sense of interoperability. NORD's philosophy
reflects some of NORD's rationale and some of its design points.

   * Follow the Unix philosophy. 
   * Target i386, s390, ppc, and arm hardware. 
   * Separate easily-replaced core system from optional packages. 
   * Follow Linux FHS where it makes sense. 
   * Don't use SystemD.
   * Make as much static as is reasonable. (minimize shared 
library dependencies)
   * Achieve simplicity and stability. (good rescue system 
or embedded system)
   * Achieve runs-from-ROM capability.
   * Minimize security attack surfaces.
   * Include a hand selected collection of the standard tools.
   * Upgrade/install using RSYNC; no package manager needed.

Supported Scripting Languages

   * Regina REXX 
   * Open Object REXX
   * Perl
   * Tcl
   * Python
   * Ruby

Scripting languages are supplied in a separate filesystem 
which holds builds for any platform (i386, s390, PPC).  
As supplied, these scripting languages can theoretically be run on 
any Linux distribution (eg: SuSE, RedHat, Debian, Slackware, ...).

Other languages can be added.

## What it lacks

   * X ... or any graphics (but you can leverage X from another distro; 
this has been proven)
   * an installer; simply boot it and run it; use 'rsync' or 'tar' to 
install it on other media
   * a package manager; expected to include RPM and 'dpkg' eventually, 
but does not require them

NORD uses SysVInit rather than the popular SystemD replacement, 
to keep things simple. A wise colleague has argued that SystemD 
adheres to the Unix philosophy when you consider "do one thing well"
to mean higher level things such as an overall system custodial task. 
Many people disagree with that, seeing startup, scheduling, 
and logging as independent operations. 

NORD uses the "shadow" package rather than "pwdutils".
This is probably just historical.

Some packages included with NORD are back-leveled in the core, 
notably 'tar' and 'make'. This is because of difficulties
with their newer releases in certain environments where NORD is deployed. 
Newer releases can always be added to NORD via Chicory (/usr/opt) 
or via CSCRATCH. 

## What Works

NORD presently runs on ...

   * Linux-s390, complete, self-hosting, demonstrable
   * Linux-i386, complete, self-hosting, demonstrable
   * Linux-ppc, self-hosting
   * Linux-arm
   * Linux-sparc

All of the above provide a cleaner build environment 
than otherwise available. (i.e., reduced dependency on shared libraries, 
more current development chain) 

## Mascot

Jon E Bird suggested that NORD should have a mascot. 
So it seemed that a friendly black and white animal with a fondness for 
colder climates would do:

![tasha-in-snow.jpg](https://github.com/trothr/nord/blob/master/images/tasha-in-snow.jpg)

In this case, those colder climates are northern. 
This ain't no penguin; she's got teeth! 

-- R; <><


## NORD docs

This file is part of the collection found on GitHub at ...

https://github.com/trothr/nord/tree/master/doc

*this page "NORD Linux" last updated 2017-Mar-04 (Monday) by RMT*


