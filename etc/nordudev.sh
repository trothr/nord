#!/bin/sh

# REPLACE THIS with real UDEV as soon as it is available

umount /dev 1> /dev/null 2> /dev/null
umount /dev 1> /dev/null 2> /dev/null
mount -n -t tmpfs udev /dev

#_POSIX2_VERSION=200111 ; export _POSIX2_VERSION
tail -n +3 /proc/partitions \
  | awk '{print "mknod -m 660 /dev/" $4 , "b" , $1 , $2}' | sh

mkdir -m 555 /dev/pts
mkdir -m 1777 /dev/shm
mkdir -m 755 /dev/disk ; mkdir -m 755 /dev/disk/by-path

mknod -m 640 /dev/mem c 1 1
mknod -m 640 /dev/kmem c 1 2
mknod -m 666 /dev/null c 1 3
mknod -m 640 /dev/port c 1 4
mknod -m 666 /dev/zero c 1 5
mknod -m 622 /dev/full c 1 7
mknod -m 666 /dev/random c 1 8
mknod -m 644 /dev/urandom c 1 9
mknod -m 660 /dev/kmsg c 1 11

mknod -m 666 /dev/tty c 5 0
mknod -m 620 /dev/console c 5 1
mknod -m 666 /dev/ptmx c 5 2

mknod -m 660 /dev/vmcp c 10 61
mknod -m 660 /dev/device-mapper c 10 62

mknod -m 600 /dev/tty1 c 4 1
mknod -m 600 /dev/tty2 c 4 2
mknod -m 600 /dev/tty3 c 4 3
mknod -m 600 /dev/tty4 c 4 4
mknod -m 600 /dev/tty5 c 4 5
mknod -m 600 /dev/tty6 c 4 6
mknod -m 600 /dev/tty7 c 4 7
mknod -m 600 /dev/tty8 c 4 8
mknod -m 600 /dev/tty9 c 4 9

mknod -m 600 /dev/ttyS0 c 4 64
mknod -m 600 /dev/ttyS1 c 4 65
mknod -m 600 /dev/ttyS2 c 4 66
mknod -m 600 /dev/ttyS3 c 4 67
mknod -m 600 /dev/ttyS4 c 4 68
mknod -m 600 /dev/ttyS5 c 4 69
mknod -m 600 /dev/ttyS6 c 4 70
mknod -m 600 /dev/ttyS7 c 4 71
mknod -m 600 /dev/ttysclp0 c 4 65









