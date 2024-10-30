# NORD

This is the Github repository for NORD,
a minimalist computer operating system suitable for server or embedded
systems or as a base for desktop systems.  It is built to start fast
and run light.  It uses the Linux kernel and Linux-related packages.

## Keeping Linux Simple

NORD is a Linux system that tries hard to not be yet another distro. <br/>
It uses two different build schemes, both of which ride on top of
the standard recipe. NORD uses source archives aquired directly from
the individual package authors and maintainers. The result is a system
with no dependency on any central distributor.

While NORD uses the Linux kernel, it is more about Unix than Linux.

## More Unix than Linux

"*Unix was not designed to stop its users from doing stupid things,
 as that would also stop them from doing clever things.*" <br/>
 -- Doug Gwyn

Nord is more focused on Unix than on Linux.
Thankfully, the Linux kernel is POSIX compliant
so that serves as the kernel for NORD.

After trying to connect with the LSB*
it became clear that most distributors did their own thing.

## Filesystem Hierarchy

NORD keeps an eye toward the Filesystem Hierarchy Standard (FHS)
but its goal of being "just Unix" is sometimes at odds with changes
in the Linux world. (And FHS is a Linux thing.)

Many Linux distributions, and even some Unix implementations,
flatten the root and `/usr` content. This can make things simpler
but it ignores the reasons why implementors have used the un-flattened
layout. (Not enumerated here.)

The NORD layout is described in its own brief markdown file.

[the NORD Filesystem Hierarchy](doc/hierarchy.md)

## Rough Consensus and Running Code

NORD more closely follows the IETF mantra ...

    We reject: kings, presidents and voting.

    We believe in: rough consensus and running code.

This is attributed to Dave Clark from 1992 IETF plenary presentation.

## Standard Recipe

NORD follows the standard recipe for building internet sourced packages.

    # get the source, keep your copy indefinitely
    # explode the source
    ./configure
    make
    make install

It serves as a great example of "running code"
because so many open source packages follow that sequence.

On top of the standard recipe are two build schemes.

* CSCRATCH
    builds the core of NORD into a bootable root filesystem
    using an existing host platform (not necessarily NORD)
* Chicory (the `/usr/opt` scheme)
    builds non-core packages (not exclusively for NORD) as relocatable,
    possibly shareable components (similar to IBM `/usr/lpp`
    or Sun `/opt/SUNW`)

Between these two is a solid base with a lot of flexibility.

Find out more about Chicory from its GitHub project:

https://github.com/trothr/chicory

## Hardware Platforms

Ideally, NORD can run on any hardware supported by Linux.
The following work now:

* s390
* i386
* ppc, except for the bootstrap
* arm, except for the bootstrap, borrows host runtime
* sparc, except for the bootstrap

Platforms listed here as "except for the bootstrap" run in `chroot`.
Those which are "except for the runtime" borrow the runtime of
a distributor-provided host.

Above are the 32-bit variants of bi-modal architectures. <br/>
The 64-bit counterparts have been underway (slowly) for some time.

NORD is hungry for more hardware platforms.

## ZNETBOOT

When hosted on z/VM, NORD is most easily installed via ZNETBOOT.

ZNETBOOT itself is just a CMS-based web-oriented loader
and can be used to bootstrap any Linux distribution. <br/>
Try it!

See the ZNETBOOT project on Github, or download from
http://www.casita.net/pub/znetboot/znetboot.vmarc
or
http://www.casita.net/pub/znetboot/znetboot.tar.gz

Use the `nord.znetboot` config file included.
Tailor it to your specific configuration, then run the command

    znetboot nord

## Links

A related project was published by Petros Koutoupis
in Linux Journal in July of 2018. The article:

https://www.linuxjournal.com/content/diy-build-custom-minimal-linux-distribution-source

Tiny URL to the article:

https://t.co/evJVLnGJCo

Petros Koutoupis' Facebook page:

https://www.facebook.com/petros.koutoupis/

\* LSB - Linux Standard Base

https://en.wikipedia.org/wiki/Linux_Standard_Base

https://wiki.linuxfoundation.org/lsb/start

FHS - Filesystem Hierarchy Standard

https://en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard

Rough Consensus and Running Code

https://datatracker.ietf.org/doc/html/rfc7282

Original Google Docs landing page:

https://docs.google.com/document/d/1QQyCdRe4oHvxFv_23u1DX1rO7EVzhreB6zC3OoCPycM


