#!/usr/bin/env bash
# echo "def-envars.sh entered"

### Constants ###
declare DOTFILE_HOSTNAME=REPLACEME # CONTINGENT
declare -a DATE_FORMAT=(date +%m%d%y-%H%M)
declare LAST_EPOCH_MS=253402300799999

### Device files ###
declare VOID=/dev/null
declare CLIP=/dev/clipboard

### Directories ###
# declare D_DEFS=${D_HOME}/.bash-defs # already in ~/.bashrc
declare D_SSH=${D_HOME}/.ssh
declare D_BIN=${D_HOME}/.bin
declare D_I2PD=${D_HOME}/.i2pd
declare D_GIT=${D_HOME}/git
declare D_VIM=${D_HOME}/.vim
declare D_DOT=${D_GIT}/dot
declare D_AHK=${D_GIT}/.ahk
declare D_VS=${D_HOME}/AppData/Roaming/Code/User
# declare D_SOURCE=${D_DOT}/sources/${DOTFILE_HOSTNAME}
declare D_TILDE=${D_DOT}/tilde

declare AKASHA=${D_HOME}/.obsidian/akasha
declare AK_ASEPRITE=${AKASHA}/aseprite
declare AK_REVELATOR=${AKASHA}/revelator

declare D_REVELATOR=${D_HOME}/godot/revelator
