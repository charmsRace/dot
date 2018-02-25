#!/usr/bin/env bash
# vim-init.sh

### Install packages
sudo apt-get install -qqy vim git curl

declare -r VIM_DIR=~/.vim

### Load Badwolf colorscheme
declare -r BADWOLF_URL=https://raw.githubusercontent.com/sjl/badwolf/master/colors/badwolf.vim
declare -r BADWOLF_DEST=${VIM_DIR}/colors
mkdir -p $BADWOLF_DEST
curl -s $BADWOLF_URL -o ${BADWOLF_DEST}/badwolf.vim

### Install Vundle
declare -r VUNDLE_URL=https://github.com/VundleVim/Vundle.vim.git
declare -r VUNDLE_DEST=${VIM_DIR}/bundle/Vundle.vim
sudo apt-get install -qqy git curl
test ! -d $VUNDLE_DEST && git clone $VUNDLE_URL $VUNDLE_DEST
vim +PluginInstall +qall
