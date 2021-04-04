#!/bin/bash

# done run with sudo

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

source ~/.bashrc

sudo chown -R $(whoami) ~/.npm
npm install -g yarn

echo 'export PATH="$PATH:$(yarn global bin)"' >> ~/.bashrc

sudo echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
