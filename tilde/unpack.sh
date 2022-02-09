#!/usr/bin/env bash

# Run with e.g.
# `. ~/git/dot/tilde/unpack.sh ~/git/dot/tilde ~`

declare D_TILDE=$1
declare D_HOME=$2

cp -r \
  ${D_TILDE}/.bash{rc,-defs,_{logout,profile}} \
  ${D_HOME}

. ${D_HOME}/.bashrc

cp -r \
  ${D_TILDE}/.git{config,ignore-global} \
  ${D_HOME}

cp -r \
  ${D_TILDE}/.{conemu,ssh,static} \
  ${D_HOME}

cp -r \
  ${D_TILDE}/.{npmrc,prettier{ignore,rc},vimrc} \
  ${D_HOME}

cp -r \
  ${D_TILDE}/.vs/{css,snippets,{keybindings,settings}.json} \
  ${D_VS}

# Vim

# mkdir -p ${D_VIM}/{bundle,colors}

# declare -r URL_BADWOLF="https://raw.githubusercontent.com/sjl/badwolf/master/colors/badwolf.vim"
# cd ${D_VIM}/colors
# curl -s ${URL_BADWOLF} -O
# cd - > /dev/null

# declare -r URL_VUNDLE="https://github.com/VundleVim/Vundle.vim.git"
# cd ${D_VIM}/bundle
# git clone -q ${URL_VUNDLE}
# cd - > /dev/null
# vim +PluginInstall +qall

# unset D_TILDE
# unset D_HOME
# unset URL_BADWOLF
# unset URL_VUNDLE
