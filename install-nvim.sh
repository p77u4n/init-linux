#!/bin/bash

git clone https://github.com/p77u4n/nvim
chown -R tuancr ./nvim/
mkdir -p /home/tuancr/.config
rm -rf /home/tuancr/.config/nvim
mv nvim /home/tuancr/.config/
git clone https://github.com/neovim/neovim/releases/download/v0.4.3/nvim.appimage
sudo chmod +x nvim.appimage
sudo mv ./nvim.appimage /usr/bin/nvim
sudo apt-get install python-dev python-pip python3-dev python3-pip
ln -s $(which python3) /usr/local/bin/python3
pip3 install --upgrade msgpack
pip install msgpack
npm install -g neovim
npm install -g eslint
npm install -g js-beautify
npm install -g css-beautify
npm i -g bash-language-server
sudo gem install sass
sudo gem install neovim
npm install -g remark-cli
npm install -g import-js
rm -rf nvim

# install ctags

git clone https://github.com/universal-ctags/ctags.git
cd ctags
sudo apt-get install pkg-config
sudo apt-get install autoconf
./autogen.sh
./configure --prefix=/usr/local # defaults to /usr/local
make
sudo make install # may require extra privileges depending on where to install
cd ..
rm -rf ctags
echo "done ctags"

# install ag for fzf search string

sudo apt-get install silversearcher-ag
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/11.0.2/ripgrep_11.0.2_amd64.deb 
sudo dpkg -i ripgrep_11.0.2_amd64.deb
rm ripgrep_11.0.2_amd64.deb
