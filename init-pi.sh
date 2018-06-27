#!/usr/bin/env bash
# init-pi.sh
# small script for pi-specific initialization

#sudo apt-get update
#sudo apt-get upgrade

# Install terminator and set as default
sudo apt-get install terminator
sudo update-alternatives --set x-terminal-emulator $(which terminator)
# Change keyboard locale
sudo sed -i \
    's/\(XKBLAYOUT=\)"\w*"/\1"us"/g' \
    /etc/default/keyboard

# Install VS Code
sudo -s
. <( curl https://code.headmelted.com/installers/apt.sh )
alias code="code-oss"

cp ${D_SOURCE}/.lesskey ~
lesskey

sudo -s
wget -qO - \
  https://packagecloud.io/headmelted/codebuilds/gpgkey \
  | apt-key add -
echo "deb https://packagecloud.io/headmelted/codebuilds/ubuntu/ xenial main" \
  | sudo tee -a /etc/apt/sources.list.d/codebuilds.list
apt-get update
apt-get install -qqy "code-oss"
apt-get install -fqqy

# Install NVM
declare ${NVM_DIR}=~/.nvm
mkdir -p ${NVM_DIR}
curl -o- \
  https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh \
  | bash
#relog
nvm install 8

# Install yarn
curl -sS \
  https://dl.yarnpkg.com/debian/pubkey.gpg \
  | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" \
  | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update &&
sudo apt-get install --no-install-recommends yarn
