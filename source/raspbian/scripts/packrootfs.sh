source env.sh

echo "Packing rootfs..."

$MYCHROOT $ROOTDIR sh -c "cd / && find * -xdev -not \( \
              -path host-rootfs -prune \
              -path run -prune \
              -path proc -prune \
              -path sys -prune \
              -path boot -prune \
           \) | cpio --create -H newc" | gzip -9 > initrd
