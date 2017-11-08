import socket
import struct
import fcntl
import time
from sys import exit
from zeroconf import ServiceInfo, Zeroconf

print("Hello Boot.py")

"""
This example demonstrates using Python zeroconf to
advertise SSH services on your PiratePython Pi.
"""

def get_ip_address(ifname):
    try:
        s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        return socket.inet_ntoa(fcntl.ioctl(
            s.fileno(),
            0x8915,  # SIOCGIFADDR
            struct.pack(b'256s', ifname[:15])
        )[20:24])
    except OSError:
        return None

addr = None

for x in range(10):
    addr = get_ip_address(b'wlan0')
    if addr is not None:
        break
    time.sleep(1)

if addr is None:
    print("Timed out finding IP address on wlan0")
    exit(1)

info = ServiceInfo(
    "_sftp-ssh._tcp.local.", 
    "PiratePython SSH._sftp-ssh._tcp.local.", 
    socket.inet_aton(addr), 22, 0, 0, {},
    "piratepython.local.")

zeroconf = Zeroconf()
zeroconf.register_service(info)

print("Registering SSH service on: {}".format(addr))