source env.sh

ROOTDIR=$ROOTDIR-dist

echo ""
echo "" # Yes I know you can use \n but this visually separates it
echo "Cleaning up..."

./cleanup $ROOTDIR excludes.conf > /dev/null
mkdir -p $ROOTDIR/etc/dpkg/dpkg.cfg.d
cp excludes.conf $ROOTDIR/etc/dpkg/dpkg.cfg.d/

echo "Update udevadm hwdb"
$MYCHROOT $ROOTDIR udevadm hwdb --update --usr

echo "Symlinking init"
# Link init to /init so the initrd actually boots
ln -sf /sbin/init $ROOTDIR/init

ln -sf /proc/mounts $ROOTDIR/etc/mtab

echo "Creating minimal device nodes..."

# this must be done last. if the fakeroot devices exist on the system,
# fakechroot wont be able to read from them, which breaks systemd setup.
cd $ROOTDIR/dev
fakeroot /sbin/MAKEDEV std
cd ../..


