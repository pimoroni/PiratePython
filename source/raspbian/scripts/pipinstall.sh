source env.sh

echo "Installing Python packages"

cp -r pip root/
proot -0 -q "qemu-arm-static -cpu arm1176" -w / -r root env HOME=/root pip3 uninstall rpi_ws281x unicornhat
#proot -0 -q "qemu-arm-static -cpu arm1176" -w / -r root env HOME=/root pip3 install /usr/share/python-wheels/setuptools-33.1.1-py2.py3-none-any.whl 
#proot -0 -q "qemu-arm-static -cpu arm1176" -w / -r root env HOME=/root pip3 install /usr/share/python-wheels/wheel-0.29.0-py2.py3-none-any.whl
proot -0 -q "qemu-arm-static -cpu arm1176" -w / -r root env HOME=/root pip3 install pip/*
rm -rf $ROOTDIR/pip

proot -0 -q "qemu-arm-static -cpu arm1176" -w / -r root python3 -m compileall /usr
