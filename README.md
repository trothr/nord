# NORD

This is the Github repository for NORD,
a minimalist computer operating system suitable as a base for
server, desktop, or embedded systems.  It is built to start fast
and run light.  It uses the Linux kernel and Linux-related packages.

Original Google Docs landing:

    https://docs.google.com/document/d/1QQyCdRe4oHvxFv_23u1DX1rO7EVzhreB6zC3OoCPycM

## Keeping Linux Simple

NORD is a Linux system that tries hard to not be yet another distro.
It uses two different build schemes, both of which ride on top of
the standard recipe. NORD uses source archives aquired directly from
the individual package authors and maintainers. The result is a system
with no dependency on any central distributor.

## standard recipe

NORD follows the standard recipe for building internet sourced packages.

    # get the source, keep your copy indefinitely
    # explode the source
    ./configure
    make
    make install

On top of that are two build schemes.

* CSCRATCH
	builds the core of NORD into a bootable root filesystem
	using an existing host platform (possibly not NORD)
* Chicory (the `/usr/opt` scheme)
	builds non-core NORD packages as relocatable,
	possibly shareable components (similar to 
	IBM `/usr/lpp` or Sun `/opt/SUNW`)

Between these two is a solid core with a lot of flexibility.

## Hardware Platforms

Ideally, NORD can run on any hardware supported by Linux.
The following work now:

* s390
* i386
* ppc, excepting bootstrap
* arm, excepting bootstrap, borrows host runtime
* sparc, excepting bootstrap

Platforms listed here as "excepting bootstrap" run in 'chroot'.
Those which are "excepting runtime" borrow the runtime of the host.

## ZNETBOOT

When hosted on z/VM, NORD is most easily installed via ZNETBOOT.

ZNETBOOT itself is just a CMS-based web-oriented loader
and can be used to bootstrap any Linux distribution.
Try it!

See the ZNETBOOT project on Github, or download from
http://www.casita.net/pub/znetboot/znetboot.vmarc
or
http://www.casita.net/pub/znetboot/znetboot.tar.gz

Use the `nord.znetboot` config file included.
Tailor it to your specific configuration, then run the command

    znetboot nord


