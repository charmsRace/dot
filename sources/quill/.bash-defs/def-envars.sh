#!/usr/bin/env bash
# echo "def-envars.sh entered"

### Directories ###
# declare -r D_DEFS=~/.bash-defs # already in ~/.bashrc
declare D_GIT=~/git
declare D_DOT=${D_GIT}/dot

### Constants ###
declare -a DATE_FORMAT=(date +%m%d%y-%H%M)
