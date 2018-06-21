#!/usr/bin/env bash
# echo "def-envars.sh entered"

### Constants ###
declare DOTFILE_HOSTNAME= # contingent
declare -a DATE_FORMAT=(date +%m%d%y-%H%M)

### Directories ###
# declare D_DEFS=~/.bash-defs # already in ~/.bashrc
declare D_GIT=~/git
declare D_VIM=~/.vim
declare D_VS= # contingent
declare D_DOT=${D_GIT}/dot
declare D_SOURCE=${D_DOT}/sources/${DOTFILE_HOSTNAME}
