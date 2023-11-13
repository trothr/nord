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

To be clear, consider BASH as an example with the following files:

* bash.mk
* bash.src
* bash.cfg
* bash.exe
* bash.ins

The first file is the stub which overrides defaults and qualifies the
specific package being built. The `.src` file is a dummy indicating
that the source has been downloaded and exploded. The `.cfg` file
is a dummy indicating that the BASH package has been configured.
The `.exe` file is a dummy file indicating that BASH has been compiled.
And finally, the `.ins` file is a dummy indicating that BASH has been
installed. The last step of `make bash.ins` is usually done as root.

`_generic.mk` contains default rules which are overridden by package.mk.
Some rules are omitted and must be supplemented from package.mk.


