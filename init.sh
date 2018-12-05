#!/usr/bin/env bash
# init.sh

# To run this script locally, run:
# $ bash <(curl -s "https://raw.githubusercontent.com/calamitizer/dot/master/init.sh")
# This will run a script to clone this repo locally
# and copy stuff to relevant places.

declare -r D_HOME=~
mkdir -p ${D_HOME}}
cd ${D_HOME}

echo 'Install packages...'
sudo apt-get install -qqy curl git vim

echo 'Clone repo...'
declare -r URL_DOT="https://github.com/calamitizer/dot.git"
declare -r D_DOT=${D_HOME}/git/dot
git clone -q ${URL_DOT} ${D_DOT}

declare -r D_TILDE=${D_DOT}/tilde

echo 'Copy static files...'
cp -r ${D_TILDE}/.bash{rc,_{logout,profile},-defs} ${D_HOME}
cp ${D_TILDE}/.git{config,ignore-global} ${D_HOME}
cp -r ${D_TILDE}/.config ${D_HOME}

echo 'Initialize vim...'
cp ${D_TILDE}/.vimrc ${D_HOME}
declare -r D_VIM=${D_HOME}/.vim
mkdir -p ${D_VIM}/{bundle,colors}

declare -r URL_BADWOLF="https://raw.githubusercontent.com/sjl/badwolf/master/colors/badwolf.vim"
cd ${D_VIM}/colors; curl -s ${URL_BADWOLF} -O; cd - > /dev/null

declare -r URL_VUNDLE="https://github.com/VundleVim/Vundle.vim.git"
cd ${D_VIM}/bundle; git clone -q ${URL_VUNDLE}; cd - > /dev/null
vim +PluginInstall +qall

echo 'Set up Node/npm with nvm'
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

echo 'Done'
exit 0
