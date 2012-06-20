#!/bin/bash

sudo hostapd -B /usr/share/hostapd.conf
sudo ifconfig wlan0 inet 192.168.1.1
sudo /etc/init.d/isc-dhcp-server start
