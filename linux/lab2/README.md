# Lab 2: LVM Configuration on Ubuntu

This lab demonstrates how to configure Logical Volume Management (LVM) on a newly added disk in Ubuntu.

---

##  Lab Objectives

1. Add and partition a new disk.
2. Create LVM Physical Volumes, Volume Group, and Logical Volume.
3. Format and mount the Logical Volume.
4. Extend the Volume Group and Logical Volume.
5. Resize the filesystem to use all available space.

---

##  Steps 

```bash
lsblk
fdisk /dev/sdb
pvcreate /dev/sdb1
pvcreate /dev/sdb2
vgcreate myvg /dev/sdb1
lvcreate -L 1.5G -n mylv myvg
mkfs.ext4 /dev/myvg/mylv
mkdir /mnt/mydata
mount /dev/myvg/mylv /mnt/mydata
vgextend myvg /dev/sdb2
lvextend -l +100%FREE /dev/myvg/mylv
resize2fs /dev/myvg/mylv
df -h /mnt/mydata
```

