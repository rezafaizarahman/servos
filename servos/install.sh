#!/bin/bash

sudo apt-get install dhcp3-server hostapd
sudo cp servos/hostapd.conf /usr/share/hostapd.conf
sudo mv /etc/dhcp/dhcpd.conf /etc/dhcp/dhcpd.conf.bak
sudo cp servos/dhcpd.conf /etc/dhcp/dhcpd.conf
sudo mv /etc/default/isc-dhcp-server /etc/default/isc-dhcp-server.bak
sudo cp servos/isc-dhcp-server /etc/default/isc-dhcp-server
sudo mv /etc/sysctl.conf /etc/sysctl.conf.bak
sudo cp servos/sysctl.conf /etc/sysctl.conf
sudo mv /etc/rc.local /etc/rc.local.bak
sudo cp servos/rc.local /etc/rc.local
sudo cp servos/trgx.sh /etc/init.d/trgx.sh
sudo chmod +x /etc/init.d/trgx.sh
sudo update-rc.d trgx.sh defaults
