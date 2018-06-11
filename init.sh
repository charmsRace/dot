#!/usr/bin/env bash
# local.sh

# bash <(curl -s "${D_TILDE}/test.sh")

declare -r D_HOME="/home/anti/Downloads/dev/dottest"
cd ${D_HOME}

sudo apt-get install -qqy curl git vim
declare -r URL_DOT="https://github.com/calamitizer/dot.git"
declare -r D_DOT=${D_HOME}/git/dot
git clone -q ${URL_DOT} ${D_DOT}

declare -r D_TILDE=${D_DOT}/tilde

### Copy static files ###

cp -r ${D_TILDE}/.bash{rc,_{logout,profile},-defs} ${D_HOME}
cp ${D_TILDE}/.git{config,ignore-global} ${D_HOME}
cp -r ${D_TILDE}/.config ${D_HOME}

### Vim ###
cp ${D_TILDE}/.vimrc ${D_HOME}

declare -r D_VIM=${D_HOME}/.vim
mkdir -p ${D_VIM}/{bundle,colors}

declare -r URL_BADWOLF="https://raw.githubusercontent.com/sjl/badwolf/master/colors/badwolf.vim"
cd ${D_VIM}/colors; curl -s ${URL_BADWOLF} -O; cd - > /dev/null

declare -r URL_VUNDLE="https://github.com/VundleVim/Vundle.vim.git"
cd ${D_VIM}/bundle; git clone -q ${URL_VUNDLE}; cd - > /dev/null
vim +PluginInstall +qall
