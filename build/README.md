# Rootstrapping

The scripts found here in the `build` directory are used for rootstrapping.
Rootstrapping uses the Chicory build of some two dozen core packages
to instantiate the a working root of a fresh system. From that,
core packages are then rebuilt into their standard locations using CSCRATCH.

## strap0.sh

`strap0.sh` creates a platform specific sub-directory, e.g., `Linux-i386`,
and populates it with a skeletal hierarchy. It is intended to be re-runnable.

## strap1.sh

`strap1.sh` [re]runs `strap0.sh` and then fleshes out the new hierarchy
with content from CD0 (Chicory build of the core, CD1 (scripting languages,
especially Perl), and CD2 (compiler and utilities). It also creates `strap.set`
with PATH settings to find commands via Chicory without sym-linkery.

At the end of its run, `strap1.sh` attempts to run a shell in the new system root.

## strap2.sh

`strap2.sh` [re]runs '`strap1.sh` and then fleshes out the build environment,
notably the kernel headers. It drives a build of individual core packages.

## strap3.sh

`strap3.sh` follows `strap2.sh` by building core packages which are
not in the CD0 Chicory collection.

## You Will Need

You will need the following:

* `etc` directory with initial `passwd` and `group` files.

* `opt` directory with CD0, CD1, and CD2 which will be bind mounted
into the new root.





