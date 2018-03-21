#!/bin/bash -e

tar xfz files/ultibo2fc3634.tgz -C ${ROOTFS_DIR}/home/pi/
chown 1000:1000 ${ROOTFS_DIR}/home/pi/ultibo -Rv
cp files/ultibo.desktop ${ROOTFS_DIR}/home/pi/.local/share/applications
chown 1000:1000 ${ROOTFS_DIR}/home/pi/.local/share/applications/ultibo.desktop
cp ${ROOTFS_DIR}/etc/dphys-swapfile ${ROOTFS_DIR}/etc/dphys-swapfile.orig
sed s/100/1000/ < ${ROOTFS_DIR}/etc/dphys-swapfile.orig > ${ROOTFS_DIR}/etc/dphys-swapfile

