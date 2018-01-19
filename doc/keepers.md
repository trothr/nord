# Keepers

This document is not specific to NORD
but resides alongside NORD documentation as a matter of philosophy.

## Things Worth Keeping

This document lists "things worth keeping".

Newer items are at the top of the list.

Some things worth keeping fade away for lack of support.
Other things worth keeping are lost to competition from challengers.

## 32-bit in a 64-bit world

32-bit capability is something we should keep.
Bi-modal kernels on bi-modal hardware allow for 32-bit applications
to run on a 64-bit kernel on 64-bit hardware. 64-bit applications
also run just fine.

32-bit programs are known to run faster in many cases.

There is still a lot of 32-bit hardware in essential use
and might always be. (which would render the 64-bit kernel unusable
but justify all of the 32-bit programs, including those which
might see use in both modes)

Challengers: Some vendors and distributors would like to
stop supporting 32-bit applications. It makes sense that they would
stop spending money on things which don't profit them, as long as
they don't paint the rest of us into a corner where we cannot
support 32-bit programs on our own time and dime.

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

LVM2 is everything partitioning wanted to be.
If anything should be left to fade into history, partitioning is such.
But partitioning persists. Please also let us keep LVM2.

