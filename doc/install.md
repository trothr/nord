# NORD Installation

This document discusses installation of NORD Linux and is specifically 
focused on installing NORD via CMS onto a z/VM virtual machine. 
(That means the S/390 architecture.) To that end, the first part 
describes the ZNETBOOT utility. Following sections, starting with 
“nordinstboot”, are common to other architectures. 


## ZNETBOOT

ZNETBOOT EXEC runs on VM/CMS and gets you started with Linux quickly 
using no other media. It is not specific to NORD and can be used with 
any Linux distribution. It pulls a Linux kernel and a small memory based 
root filesystem directly from the web. Between these two files, 
it sandwiches a boot parameter file, feeding all three  to “spool space” 
on your z/VM system. Finally, it attempts to IPL the (virtual) card deck. 

ZNETBOOT EXEC requires CURL REXX to get files from the web. 
You will need to manually get both scripts, or find them in ZNETBOOT VMARC 
(below), and upload them to your CMS virtual machine. Once you have 
both ZNETBOOT EXEC and CURL REXX, there are no additional files 
to manually download/upload. Simply create \<vmid\> ZNETBOOT 
(a boot parms file) as described below, and then run `znetboot` 
at the CMS “Ready;” prompt. 

ZNETBOOT can be used with any Linux distribution. 
See below for details about that. Much of this document discusses 
installation of NORD Linux, but this CMS utility is not restricted to 
any particular Linux distribution. (Nor is it limited to Linux 
for that matter.) ZNETBOOT can probably be used with other 
operating systems, anything which can be IPLed from a virtual 
card deck fetched from the web or intranet. 

You can get `ZNETBOOT EXEC` and `CURL REXX` separately or download them 
together in `ZNETBOOT VMARC`, which includes samples and a help file. 
There is also `znetboot.tar.gz` with the same content. ZNETBOOT is 
a CMS application, so most filenames are expressed as fn ft in that context. 


## Using ZNETBOOT with NORD Linux

When installing NORD Linux with ZNETBOOT, to keep things simple, 
most devices are at fixed addresses. The system disk (the boot disk) 
is at 1B0. Think of the NORD system disk in terms of the CMS system disk, 
190 “S”: it is bootable and has essential operating system files. 
The NORD root disk is separate and is at 1B1. Think of the root disk 
in terms of the CMS per-user “A” disk at 191: unique content 
for each virtual machine. The NIC is expected to be at 340 
and in QDIO mode. It should be coupled to a layer 2 VSwitch.


You must create \<vmid\> ZNETBOOT with the network info of your Linux 
guest. Sample contents of LTROTH3 ZNETBOOT (a working example) …

    NORD_HOSTNAME=ltroth3.casita.net
    NORD_IPV4AD=148.100.88.35
    NORD_IPV4GW=148.100.88.1
    NORD_IPV6AD=2620:91:0:688:1::35/64
    dasd=1b0-1b3,91b0-91b3
    root=/dev/ram0 ro
    init=/sbin/nordinst.sh

These values become the boot parameters “deck” along with the kernel 
and INITRD when you run `znetboot`. If you do not have (or do not need) 
IPv6 connectivity, then you can omit the IPv6 line. The above configuration 
is a working example for a system with static addresses, a known 
IPv4 gateway, and well behaved IPv6 advertisement/discovery.

This example configuration runs to successful IPL in less than 15 seconds 
on a z10. You get a shell with very few commands, but able to run 
the scripts described below. NORD Linux requires as little as 64M. 
Complete installation normally takes less than 20 minutes, 
most of which is formatting the disks and copying the system content. 
(No interaction needed for that.)


    nordinstboot

This script prepares your boot disk. 
From the installation shell, ‘nordinstboot’ will format your 1B0, 
create an EXT2 filesystem, and populate it with the operating system. 
It will then install IPL text thus making the disk bootable. 
The supplied boot parameters expect a root disk at 1B1. (see next)

As discussed, NORD ships with separate boot and root filesystems. 
They can be combined. The boot disk can be your root disk, 
but it was convenient to deliver it this way.

When `nordinstboot` is run on a z/VM guest with 3390 (ECKD) DASD, 
it uses `dasdfmt` and you will be prompted to confirm low-level formatting.


    nordinstroot

This script prepares your root disk. 
From the installation shell, `nordinstroot` will format your 1B1, 
create an EXT3 filesystem, and populate it with a viable collection of 
per-instance /etc and /var content. When you boot from the 1B0, 
the system will use this 1B1 to hold all read-write content. 

After running `nordinstboot` and `nordinstroot`, exit from the 
installation shell. The installation kernel will panic. 
On z/VM you will be in a CP READ state. This is normal. 

When `nordinstroot` is run on a z/VM guest with 3390 (ECKD) DASD, 
it uses `dasdfmt` and you will be prompted to confirm low-level formatting.


    nordinstpost

This script downloads and compiles things not provided in the previous steps.
After running `nordinstboot` and `nordinstroot`, IPL your new system. 
You should then complete the installation using `nordinstpost` 
which will download the sources for additional packages 
not pre-compiled nor included directly with the NORD core system 
in some jurisdictions. Most importantly, `nordinstpost` will build OpenSSH.

`nordinstpost` must run after booting from the newly installed local disks.


## Further Steps with NORD Linux

For best security practice, the system ships with no usable passwords, 
meaning disabled, not empty. By default, INIT spawns a root shell 
on the console. From that privileged environment you can set a password, 
or (better) create IDs for your use. You should add one or more users 
to the “wheel” group and selectively escalate privileges via `sudo` 
(rather than sign on as root).


## Using ZNETBOOT with ClefOS

To bring up the ClefOS installer, simply create \<vmid\> ZNETBOOT 
with the kernel, initrd, and boot parameters needed for ClefOS. 
As an example, see CLEFOS ZNETBOOT.


## Using ZNETBOOT with Slack/390

To bring up Slack/390 with ZNETBOOT, create \<vmid\> ZNETBOOT 
identifying the location of the kernel and initrd and including 
other boot parameters needed by the Slackware installer. 
As an example, see SLACK390 ZNETBOOT. 


## Using ZNETBOOT with Ubuntu

To bring up the Ubuntu installer, simply create \<vmid\> ZNETBOOT 
with the kernel, initrd, and boot parameters needed for Ubuntu on z/VM. 
As an example, see UBUNTU ZNETBOOT. Linux kernels requiring z12 
exhibit 0BADCCCC abend when IPLed on a z10. This is true for Ubuntu Xenial.


## Using ZNETBOOT with Debian

To bring up the Debian installer, simply create \<vmid\> ZNETBOOT 
with the kernel, initrd, and boot parameters needed for Debian. 


## Using ZNETBOOT with Fedora

To bring up the Fedora installer, simply create \<vmid\> ZNETBOOT 
with the kernel, initrd, and boot parameters needed for Fedora. 


## NORD docs

This file is part of the collection found on GitHub at ... 

    https://github.com/trothr/nord/tree/master/doc


this page “NORD Installation” last updated 2017-Dec-28 (Thursday) by RMT


