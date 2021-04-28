#!/bin/bash

cat << EOF > ${rootfs_dir}/etc/fstab
# Default mounts
/dev/sdb2       /               ext4    defaults,noatime,nodiratime,commit=600,errors=remount-ro 0 1
/dev/sdb1       /boot           auto    defaults                0       0

proc            /proc           proc    defaults                0       0
devpts          /dev/pts        devpts  defaults,gid=5,mode=620  0       0
tmpfs           /dev/shm        tmpfs   mode=0777               0       0
#tmpfs          /#t#m#p         tmpfs   mode=1777               0       0
tmpfs           /run            tmpfs   mode=0755,nosuid,nodev  0       0
sysfs           /sys            sysfs   defaults                0       0

# Add swap
#/dev/sdb3      swap            swap    defaults                0       0

# Add internal harddisk
#/dev/sda1       /mnt/hd-intern  ext4    defaults,noatime        0       1
EOF
