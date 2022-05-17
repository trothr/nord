# /var/csc

`/var/csc` is the build directory for CSCRATCH.
It is also the home directory for build user `nord`.

## CSCRATCH

CSCRATCH is the in-place build method used by NORD.
It is not limited to NORD and can be used with other systems.

The `makefile` found here drives CSCRATCH.
Targets are package.src, package.cfg, package.exe, and finally package.ins
where "package" is the name of the software package of interest.
The install step (making package.ins) must usually be done as user `root`.

`_generic.mk` contains default rules which are overridden by package.mk.
Some rules are omitted and must be supplemented from package.mk.


