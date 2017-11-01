source env.sh

NEW_USER=pirate
NEW_PASS=`mkpasswd -m sha-512 p1r4t3`
NEW_HOST=piratepython

echo "Adding user $NEW_USER"
$MYCHROOT $ROOTDIR useradd -m -p $NEW_PASS -s /bin/bash $NEW_USER
$MYCHROOT $ROOTDIR usermod -a -G dialout,audio,sudo,adm,kmem $NEW_USER
$MYCHROOT $ROOTDIR chown -R pirate:pirate /home/pirate



