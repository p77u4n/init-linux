#!/bin/bash

git clone https://github.com/p77u4n/nvim
chown -R tuancr ./nvim/
mkdir -p ~/.config
mv nvim ~/.config/
add-apt-repository ppa:neovim-ppa/stable
apt-get update
apt-get install neovim
apt-get install python-dev python-pip python3-dev python3-pip
ln -s $(which python3) /usr/local/bin/python3
npm install -g neovim
npm install -g eslint
npm install -g js-beautify
npm install -g css-beautify
apt install ruby-full && gem install sass && gem install neovim
npm install -g remark-cli
npm install -g import-js
rm -rf nvim

# install ctags
sudo apt-get install libjansson-dev

git clone https://github.com/universal-ctags/ctags.git --depth=1
cd ctags
apt-get install pkg-config
./autogen.sh
./configure --prefix=/usr/local # defaults to /usr/local
make
make install # may require extra privileges depending on where to install
cd ..
rm -rf ctags
echo "done ctags"

# install ripgrep for denite

apt-get install ripgrep

# install ag for fzf search string:vs

apt-get install silversearcher-ag


