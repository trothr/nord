# NORD Filesystem Hierarchy

This is the NORD Filesystem Hierarchy doc as a markdown file.
This version is a migration from, and a simplifcation of, the original Google Docs version.

## importing

We're in the middle of importing from the Google Docs version.

https://docs.google.com/document/d/1Pz7rP1S56JWAQxdJ2rO1osuzMH3mZ7QjGTSc37XxSKo

## FHS

NORD filesystem hierarchy begins with the standard FHS directories. 

| Directory    | Description                                          |
| ------------ | ---------------------------------------------------- |
| /bin         | Essential command binaries                           |
| /boot        | Static files of the boot loader                      |
| /dev         | Device files                                         |
| /etc         | Host-specific system configuration                   |
| /lib         | Essential shared libraries and kernel modules        |
| /lib\<qual\> | Alternate essential libraries                        |
| /media       | Mount point for removable media                      |
| /mnt         | Mount point for mounting a filesystem temporarily    |
| /opt         | Add-on application software packages                 |
| /run         | Data relevant to running processes                   |
| /sbin        | Essential system binaries                            |
| /srv         | Data for services provided by this system            |
| /tmp         | Temporary files                                      |
| /usr         | Secondary hierarchy                                  |
| /var         | Variable data                                        |
| /home        | User home directories                                |
| /root        | Home directory for the administrator                 |

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

some specific directories

| Directory        | Description                                          |
| ---------------- | ---------------------------------------------------- |
| /usr/bin         | Supplemental command binaries                        |
| /usr/lib         | Supplemental shared libraries and static libraries   |
| /usr/lib\<qual\> | Alternate supplemental libraries                     |
| /usr/libexec     |                                                      |
| /usr/sbin        | Supplemental system binaries                         |
| /usr/include     | Header files                                         |
| /usr/share       |                                                      |
| /usr/man         | Sym-link to /usr/share/man                           |
| /usr/info        | Sym-link to /usr/share/info                          |
| /usr/spool       | Sym-link to /var/spool                               |
| /usr/opt         | Critical path for Chicory (Portable Apps)            |
| /usr/local       | Localized content                                    |
| /usr/src         | General sources, especially the kernel               |
| /usr/X11         | Common path for X windows files                      |

## NORD norms

`/usr/local` is a sym-link to `/local` in NORD 
and `/local` is unique per instance as a practice. 
(Could be part of the root. But not enforced in any case.) 

`/usr/opt` is usually a sym-link to `/var/opt` in NORD. 
This facilitates shared OS content, in particular shared `/usr`. 
`/var/opt` has varying content and is usually unique per instance 
(not shared). 

`doc` and `docs` are sym-links to `/usr/share/doc`. 

## NORD docs

This file is part of the collection found on GitHub at ... 

    https://github.com/trothr/nord/tree/master/doc

this page “NORD Filesystem Hierarchy” last updated 2021-Jul-26 (Monday) by RMT


