# raspberry-pi
The raspberry pi must run [webdis](https://github.com/nicolasff/webdis) and have a static IP address (`192.168.88.100`).

## Set-up
- Install [Raspberry Pi OS Lite](https://www.raspberrypi.com/software/operating-systems/).
- Clone this repository and run `install.sh`.
- Set the boot partition to read-only: `sudo raspi-config`, then "Performance Options", then "Overlay File System".
- Set a static IP using static DHCP assignment on the router (`192.168.88.100`).
