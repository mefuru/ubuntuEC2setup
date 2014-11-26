#!/bin/bash
# Simple setup.sh for configuring Ubuntu Server 14.04 LTS (HVM), SSD Volume Type
# for headless setup. 

# Install git
# sudo apt-get install -y git

# Install nvm: node-version manager
# https://github.com/creationix/nvm
sudo apt-get install -y curl
curl https://raw.githubusercontent.com/creationix/nvm/v0.15.0/install.sh | bash

# Load nvm and install latest production node
source $HOME/.nvm/nvm.sh
nvm install v0.10.26
nvm use v0.10.26

# Install jshint to allow checking of JS code within emacs
# http://jshint.com/
npm install -g jshint

# Install rlwrap to provide libreadline features with node
# See: http://nodejs.org/api/repl.html#repl_repl
sudo apt-get install -y rlwrap

# Install emacs24
# https://launchpad.net/~cassou/+archive/emacs
sudo add-apt-repository -y ppa:cassou/emacs
sudo apt-get -qq update
sudo apt-get install -y emacs24-nox emacs24-el emacs24-common-non-dfsg

# Install Heroku toolbelt
# https://toolbelt.heroku.com/debian
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh


# Install npm
sudo apt-get install npm
sudo apt-get install node

# install ohmyzsh
sudo apt-get install zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s 'which zsh'
# https://github.com/robbyrussell/oh-my-zsh/issues/1224
# https://gist.github.com/tsabat/1498393

sudo bash ./mongo_install.bash

sudo shutdown -r 0
