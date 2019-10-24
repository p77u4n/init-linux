snap install tusk
snap install polar-bookshelf
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
apt-get install xchm

# install goldendict
apt-get install goldendict

wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
# add Typora's repository
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update
# install typora
sudo apt-get install typora

# install googler
curl https://github.com/jarun/googler/releases/download/v3.9/googler_3.9-1_ubuntu18.04.amd64.deb
dpkg -i googler_3.9-1_ubuntu18.04.amd64.deb
