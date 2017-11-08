Ahoy!

Welcome to embedded Python on your Pi Zero W.

* Unzip the contents of this folder to a fresh SD card.
* Pop it into your Pi Zero W
* Grab a microUSB cable and plug it into your Pi Zero W's USB port.
* Connect the other end to your PC.
* Up pops a new disk!

Edit main.py file to make amazing things happen.
Your changes will be loaded instantly!

PiratePython has two USB serial ports:

* The first one for your Python debug output
* The second one with a bash shell

On Windows 10 you can find these by;

* pressing Windows + R
* entering: control /name Microsoft.DevicesAndPrinters
* hitting enter
* finding the PiratePython device
* right click -> properties
* click the Hardware tab
* you will see USB Serial Device (COMXX)
* and a second USB Serial Device (COMYY)
* use an app like PuTTY to connect! 

PiratePython has SSH! Configure your WiFi and:

ssh pirate@piratepython.local

You should also see USB Ethernet on Linux and Windows 10,
currently this isn't working on OSX.

Configure your network interface with the static IP
10.0.99.2. Your Pi will be 10.0.99.1.

Use PuTTY on Windows: http://www.putty.org/

Edit wpa_supplicant.conf to set up your WiFi network.
No need to reboot!

Hostname: piratepython (you can change this in settings.txt)
Username: pirate
Password: p1r4t3 (you can change this in settings.txt)

Edit wpa_supplicant_ap.conf to set up your WiFi access point.

Change mode to ap in settings.txt to switch to access point mode.

And don't forget to have fun!

 - The Pimoroni Pirate Crew


Note: This is an extremely alpha release!

TODO:
* Functionality to change user password and optionally disable SSH
* Other - let us know!
 