#!/bin/bash -e

tar xfz files/ultibo94af3cb.tgz -C ${ROOTFS_DIR}/home/pi/
chown 1000:1000 ${ROOTFS_DIR}/home/pi/ultibo -Rv
cp files/ultibo.desktop ${ROOTFS_DIR}/home/pi/.local/share/applications
chown 1000:1000 ${ROOTFS_DIR}/home/pi/.local/share/applications/ultibo.desktop
