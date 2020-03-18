#!/bin/bash

sudo true

git clone https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh
cd ..
rm -rf nerd-fonts

apt-get install fonts-powerline
apt install fonts-firacode
