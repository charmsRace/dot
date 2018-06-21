#!/usr/bin/env bash

# Run external definition files
# (e.g. aliases, symlinks)
declare D_DEFS=~/.bash-defs
declare DEF_INDEX="${D_DEFS}/index.sh"
[[ -f $DEF_INDEX ]] && . $DEF_INDEX
unset DEF_INDEX

alias python2="winpty /c/Python27/python.exe"

##### Directories

export D_OTMS=~/git/opentms
export D_OCONF=~/git/opentms/dist/installer/target/dist/conf
export D_OLOGS=~/git/opentms/dist/installer/target/dist/logs
export D_ODEV=~/git/opentms-dev-tool
export D_MLOGS=~/dev/maven/logs

export D_SQL=~/dev/psql

alias dotms="cd ${D_OTMS}"

##### Maven

export PATH=$PATH:/c/Users/alexb/apache-maven-3.5.0/bin

##### OpenTMS general

alias otms="${D_ODEV}/index.js"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH:$HOME/AppData/Local/Yarn/bin"
