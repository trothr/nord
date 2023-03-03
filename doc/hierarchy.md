# NORD Filesystem Hierarchy

This is the NORD Filesystem Hierarchy doc as a markdown file.
This version is a migration from, and a simplifcation of,
the original Google Docs version.

## Starting from FHS

NORD filesystem hierarchy begins with the standard FHS directories.

https://www.pathname.com/fhs/pub/fhs-2.3.html

NORD varies from the popular FHS standard in that it follows
historical Unix layouts and supports sharable content.

| Directory    | Description                                          | Shareable |
| ------------ | ---------------------------------------------------- | --------- |
| /boot        | Static files of the boot loader                      |    y      |
| /bin         | Essential command binaries                           |    y      |
| /sbin        | Essential system command binaries                    |    y      |
| /lib         | Essential shared libraries and kernel modules        |    y      |
| /lib\<qual\> | Alternate essential libraries                        |    y      |
| /usr         | Secondary hierarchy (bin, lib, sbin, so forth)       |    y      |
| /opt         | "Optional" application software packages             |    y      |
| /dev         | Device files                                         |    \*     |
| /etc         | Host-specific system configuration                   |           |
| /tmp         | Temporary files (may be cleared at boot time)        |           |
| /var         | "Variable" data                                      |           |
| /var/web     | primary web server content                           |           |
| /var/run     | Data relevant to running processes                   |           |
| /run         | Data relevant to running processes                   |           |
|              | (this is a symbolic link to /var/run)                |           |
| /media       | Mount point for removable media                      |           |
| /mnt         | Mount point for manual temporary mounts              |           |
| /srv         | Data for services provided by this system            |           |
| /home        | User home directories                                |           |
| /root        | Home directory for the administrator                 |           |
| /SYSTEM      | Explicitly shareable operating system content        |    y      |

\*The `/dev` directory can be shared if dynamic devices are not used.
Most often, however, some devices will come and go, so a host-specific
`/dev` pseudo filesystem is recommended.

NORD does not specifically use or supply `/srv` content or framework.

NORD uses /var/run (sym-linked to /run for compatibility)
and avoids contention by handling /var mount early.

`/SYSTEM` is best illustrated by examples:
`/Linux-i386` or `/Linux-x86_64` would be for NORD on PC hardware
when the operating system disk is shared (i.e., among virtual machines).

## NORD norms

Directories intended solely for use as mount points are '`chmod 555`'. 

`/lib/modules` is a sym-link to `/boot/modules` so that kernel modules
can reside with their respective kernel in case `/boot` is a separate filesystem.

`/etc/mtab` is never a sym-link to `/proc/mounts` in NORD.
The reason for this is primarily to simplify use of `chroot`
where `/proc/mounts` content may be misleading or may expose
too much of the hosting environment.

`/run` is always a sym-link to `/var/run` in NORD.
In FHS, this is reversed to facilitate mounting `/var` separate from the root.
But it's not strictly required, and NORD does not use SystemD which has a
hard requirement for the `run` directory and begins exectution early in startup.

## /usr

Ideally, `/usr` is arranged to be brought online during the boot process.
We call it "supplemental" for that reason.

| Directory        | Description                                          |
| ---------------- | ---------------------------------------------------- |
| /usr/bin         | Supplemental command binaries                        |
| /usr/sbin        | Supplemental system command binaries                 |
| /usr/lib         | Static libraries and supplemental shared libraries   |
| /usr/lib\<qual\> | Alternate supplemental libraries                     |
| /usr/libexec     |                                                      |
| /usr/include     | Header files                                         |
| /usr/share       | "shared" (as in architecture-independent) content    |
| /usr/man         | Sym-link to /usr/share/man, online manuals           |
| /usr/info        | Sym-link to /usr/share/info                          |
| /usr/spool       | Sym-link to /var/spool                               |
| /usr/opt         | Critical path for Chicory (Portable Apps)            |
|                  | (recommended to be a symbolic link to /var/opt)      |
| /usr/local       | Localized content                                    |
|                  | (this *may* be a symbolic link to /local)            |
| /usr/src         | General sources, especially the kernel               |
| /usr/X11         | Common path for X windows files                      |

NORD does not recognize `/usr/etc` as such.
That is recommended to be a symbolic link to `/usr/local/etc`.

## NORD norms

`/usr/local` is often a sym-link to `/local` in NORD
and `/local` is unique per instance (per host) as a practice.
(Could be part of the root. But not enforced in any case.)

`/usr/opt` is usually a sym-link to `/var/opt` in NORD.
This facilitates shared OS content, in particular shared `/usr`.
`/var/opt` has varying content and is usually unique per instance
(not shared).

`doc` and `docs` are sym-links to `/usr/share/doc`.

## NORD docs

This file is part of the collection found on GitHub at ...

    https://github.com/trothr/nord/tree/master/doc

this page "NORD Filesystem Hierarchy" last updated 2023-03-03 (Friday) by RMT

