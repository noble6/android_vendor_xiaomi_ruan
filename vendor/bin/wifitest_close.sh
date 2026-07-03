#!/bin/sh
setprop vendor.sys.wifiFtmdaemon 0
setprop vendor.closewifi_L 0
echo 0 > /sys/module/qca6750/parameters/con_mode
ifconfig wlan0 down
exit 0
