source env.sh

ROOTDIR="$ROOTDIR-dist"

function bblink {
	$MYCHROOT $ROOTDIR ln -s /bin/busybox $1
}

echo "Remove apt and dpkg"
# Implode apt and dpkg, the system is stateless, 
# so whadda we gonna do with a package manager?
$MYCHROOT $ROOTDIR dpkg --force-all --purge tar grep
bblink /bin/tar
bblink /bin/grep

$MYCHROOT $ROOTDIR dpkg --force-all --purge findutils diffutils net-tools sed mount gzip

bblink /bin/sed

# gzip
bblink /bin/gzip

# cpio
# bblink /bin/cpio

# extra stuff
bblink /usr/bin/reset
bblink /usr/bin/clear
bblink /usr/bin/telnet
bblink /usr/bin/microcom
bblink /bin/pidof
bblink /bin/zcat
bblink /bin/udhcpd
bblink /bin/udhcpc
bblink /bin/vconfig
bblink /usr/bin/unzip
bblink /usr/bin/dos2unix
bblink /usr/bin/unix2dos
bblink /usr/bin/wget
bblink /bin/bzip2
bblink /usr/bin/hexdump
bblink /usr/bin/tftp
bblink /usr/bin/xzcat
#bblink /sbin/getty
bblink /usr/bin/logger
bblink /bin/nc
bblink /usr/sbin/traceroute
bblink /sbin/start-stop-daemon
bblink /bin/uncompress
bblink /usr/bin/renice
bblink /usr/bin/httpd
bblink /usr/bin/nslookup
bblink /usr/bin/rpm
bblink /usr/bin/ipcalc

# diffutils
bblink /usr/bin/diff
bblink /usr/bin/cmp

# findutils
bblink /usr/bin/find
bblink /usr/bin/xargs

# net-utils
bblink /bin/netstat
$MYCHROOT $ROOTDIR ln -sf /bin/busybox /usr/bin/ifconfig
bblink /sbin/nameif
bblink /sbin/route

# mount
bblink /bin/mount
bblink /bin/umount
bblink /sbin/losetup
bblink /sbin/swapoff
bblink /sbin/swapon

# coreutils
$MYCHROOT $ROOTDIR rm -f /bin/ls /bin/cp /bin/mv /usr/bin/sort /usr/bin/du
bblink /bin/ls
bblink /bin/cp
bblink /bin/mv
bblink /usr/bin/sort
bblink /usr/bin/du

# procps
$MYCHROOT $ROOTDIR rm -f /usr/bin/top
bblink /usr/bin/top

# extra
bblink /usr/bin/ip
bblink /usr/bin/vi

$MYCHROOT $ROOTDIR dpkg --purge apt libapt-pkg5.0
$MYCHROOT $ROOTDIR dpkg --force-all --purge dpkg
$MYCHROOT $ROOTDIR rm -rf /etc/apt

$MYCHROOT $ROOTDIR rm /usr/share/javascript/jquery/jquery.js
$MYCHROOT $ROOTDIR ln -s /usr/share/javascript/jquery/jquery.min.js /usr/share/javascript/jquery/jquery.js
