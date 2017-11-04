source env.sh

sudo mount -o bind /dev/urandom $ROOTDIR/dev/urandom
$MYCHROOT $ROOTDIR pip freeze
sudo umount $ROOTDIR/dev/urandom

