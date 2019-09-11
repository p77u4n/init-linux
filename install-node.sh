#!/bin/bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
echo $(command -v nvm)
[ ! -z $(command -v nvm) ] && nvm install 10.15.3 && nvm use node
npm install -g yarn

echo 'export PATH="$PATH:$(yarn global bin)"' >> ~/.bashrc
