# Keepers

This document is not specific to NORD
but resides alongside NORD documentation as a matter of philosophy.

## Things Worth Keeping

This document lists "things worth keeping".

Newer items are at the top of the list.

Some things worth keeping fade away for lack of support.
Other things worth keeping are lost to competition from challengers.

## LVM2

Linux Logical Volume Manager, specifically LVM2,
is something we should keep.

Challeners: Btrfs, ZFS, possibly others

LVM2 is "just blocks" and allows a logical volume to contain
any filesystem. Filesystems which include their own volume management
are fairly criticized for layering violation. There are good reasons
to combine filesystem with volume management.

LVM2 is listed as something we should keep because it provides
generic volume management available for all filesystems,
even those which might wish to do their own volume managment.


