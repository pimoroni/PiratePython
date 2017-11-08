#!/usr/bin/env python

print("""

Hello World

Welcome to embedded Python on your Pi Zero W.

Edit this file to make amazing things happen.
Your changes will be loaded instantly!

Drop extra libraries into the libraries folder.

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

And don't forget to have fun!

 - The Pimoroni Pirate Crew
 
""")