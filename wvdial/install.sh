#!/bin/bash

sudo apt-get install wvdial usb-modeswitch
sudo cp sf/usb_modeswitch.conf /etc/
sudo cp sf/99-haier-ce682.rules /etc/udev/rules.d/
sudo mv /etc/wvdial.conf /etc/wvdial.conf.bak
sudo cp sf/wvdial.conf /etc/wvdial.conf
sudo cp sf/smart.sh /usr/bin/smart.sh
sudo cp sf/dial.sh /etc/init.d/
sudo update-rc.d dial.sh defaults
