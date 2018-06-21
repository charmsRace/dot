#!/usr/bin/env bash
# init-pi.sh
# small script for pi-specific initialization

# Install terminator and set as default
sudo apt-get install terminator
sudo update-alternatives --set x-terminal-emulator $(which terminator
# Change keyboard locale
sudo sed -i 's/\(XKBLAYOUT=\)"\w*"/\1"us"/g' /etc/default/keyboard





# Install GPG key
# wget -qO - \
    https://packagecloud.io/headmelted/codebuilds/gpgkey |
#    apt-key add -
