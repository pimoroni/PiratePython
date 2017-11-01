#!/bin/bash -e

ROOTDIR=root

export QEMU_LD_PREFIX=$(readlink -f $ROOTDIR)

MYCHROOT="proot -0 -q qemu-arm-static -w / -r"
