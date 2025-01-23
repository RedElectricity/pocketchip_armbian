#!/bin/bash

sudo apt update
sudo apt install -y apt-transport-https ca-certificates git make zip

# Install PocketHome
cd ~
git clone https://github.com/omgmog/pocketchip-menu.git
cd pocketchip-menu
sudo apt install unclutter python3-pip python3-pygame python3-dbus upower
sudo pip install -r requirements.txt
chmod +x load.sh
mkdir -p /home/chip/.config/awesome/
ln rc.lua /home/chip/.config/awesome/rc.lua

# Install Batt Service
cd ~
sudo apt-get install libx11-dev libxtst-dev
git clone https://github.com/aleh/pocketchip-batt.git
cd pocketchip-batt
sudo make install

# Install sunvox


# Install Pico-8
cd ~
wget  https://www.lexaloffle.com/dl/chip/pico-8_0.2.4_chip.zip
unzip pico-8_0.2.4_chip.zip -d /usr/lib
mv /usr/lib/pico-8 /usr/lib/pico8
rm pico-8_0.2.4_chip.zip

# Config Xorg
cp /tmp/overlay/xorg.conf /etc/X11/xorg.conf