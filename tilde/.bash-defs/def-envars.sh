#!/usr/bin/env bash
# echo "def-envars.sh entered"

### Directories ###
declare -r D_DEFS=~/.bash-defs
declare -r D_GIT=~/git
declare -r D_VIM=~/.vim
declare -r D_DOT=${D_GIT}/dot

### Constants ###
declare -ar DATE_FORMAT=(date +%m%d%y-%H%M)
