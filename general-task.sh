#!/bin/bash

apt-get install git
apt-get install curl
add-apt-repository universe
apt-get install gnome-tweak-tool
apt-get install p7zip-full
gsettings set org.gnome.desktop.interface show-battery-percentage true
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'

apt-get install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
apt-get install gnome-software-plugin-flatpak

sudo apt install ruby-full
