# PiratePython Alpha

A minimal, robust ground-up build of Raspbian for Python programmers, packed with Python 3.5.3 and many common libraries.

Ever wanted the operating system to get out of your way and just let you write Python? PiratePython aims to bring the simplicity of MicroPython to the Pi, but all the power of the full-blown Python you're used to.

Just edit main.py with your project, watch your changes reload as you save them, and see debug output over serial with PuTTY.

It's also rock solid and stateless, meaning it's mighty difficult to render unbootable.

For the enterprising hacker, there's SSH access, a wireless Access Point mode, boot.py and boot.sh scripts for customisation and more!

## Features

* Automatic reloading of main.py, settings.txt and wpa_supplicant*.conf files
* Debug output of main.py available over the first Serial Port (the one with the lower number in Windows 10, for example)
* Full terminal available over the second Serial Port (username/password are pirate/p1r4t3)
* Configurable username
* Configure WiFi for both client and access-point modes
* Switch between client/access-point WiFi modes on the fly
* Enable/disable auto-reloading of main.py
* Support for additional Python libraries in /libraries
* Many features planned!
* Replace firmware - initrd and kernel.img - over USB Mass Storage and reboot to update

## Planned

* Automatic loading and mounting of expansion filesystems, containing projects that rely on binary apps/libraries, etc that are too big to fit into the initrd. Example: VLC, for Pirate Radio.
* Perhaps automatic installation of libraries from a requirements.txt or similar, as long as we can replace the fragile Mass Storage mode with MTP.

## Breaking Changes

Since this is an Alpha release, it's not production ready and it's likely to change drastically. You'll always find previous releases in the PiratePython release page (https://github.com/pimoroni/PiratePython/releases) if you rely on them for a project.

We hope to move to MTP - Media Transfer Protocol - in future, since it's less hacky than Mass Storage. The present file syncing solution relies on proof-of-concept hacks to the f_mass_storage kernel module, in order to detect writes from the host and sync the filesystem (by unmounting and remounting /boot) so that new code can be read. This system not only requires a customized kernel module, but may be prone to race conditions where main.py is read as it is being re-written by the host. MTP should solve this! The Mass Storage Mode may be available as an option- we'll pick what works best for beginners as the default.

# Compatibility

## Windows

Currently working - mostly - on Windows 10 using the trick described here to get RNDIS Ethernet drivers auto-installed:  https://gist.github.com/Gadgetoid/c52ee2e04f1cd1c0854c3e77360011e2

## OSX

USB Mass Storage and the two Serial ports should work, but RNDIS Ethernet is not supported on OSX. Configuration options for this are planned.

## Linux

Tested on Ubuntu 17.10, Ethernet, Serial and Mass Storage appear to work.

# Installing

We recommend you use SDFormatter to prepare your SD card, find it here: https://www.sdcard.org/downloads/formatter_4/

Download the latest release from releases: https://github.com/pimoroni/PiratePython/releases

And extract it to your SD card.