#!/usr/bin/env bash
# echo "def-aliases.sh entered"

# shortcuts to quickly edit configuration files
alias brc="vim ~/.bashrc"
alias bdi="vim ${D_DEFS}/index.sh"
alias bda="vim ${D_DEFS}/def-aliases.sh"
alias bde="vim ${D_DEFS}/def-envars.sh"
alias gcf="vim ~/.gitconfig"
alias vrc="vim ~/.vimrc"
alias hfl="sudoedit /c/WINDOWS/System32/drivers/etc/hosts"

# general
alias _="sudo"
alias sagi="sudo apt-get install"
alias .rl=". ~/.bashrc"

alias lsd="ls -aghpr --group-directories-first"
alias lst="ls -aghpt"
alias ..l="cd ..; ls -agGhp"

alias treeg="tree -aI \.git"

alias tailf="clear && tail -fn +1"
alias tailw="clear && tail -fn +1 \"$(ls -t | head -n1)\""

alias g="git" # more macros defined in ~/.gitconfig
alias groot='cd $(git rev-parse --show-toplevel)'

alias isup="ping 8.8.8.8"

# Java keytool
alias keytool='/c/Program\ Files/Java/jdk-15.0.1/bin/keytool.exe'

# navigation shortcuts
alias c-="cd - > /dev/null"
alias c.="cd .."
alias cg="cd !$:t:r"

# dotfile tools
alias .cd.="cd ${D_DOT}"
alias .cd-defs="cd ${D_DEFS}"
alias .cd-ahk="cd ${D_AHK}"
alias .cd-vs="cd ${D_VS}"

alias .code.="code ${D_DOT}/.vscode/dot.code-workspace"
alias .code-defs="code ${D_DEFS}"
alias .code-ahk="code ${D_AHK}"
alias .code-vs="code ${D_VS}"

alias .cp~="cp -r ~/.{bash{-defs,_profile,rc},conemu,git{config,ignore-global},sharpkeys,vimrc} ${D_SOURCE}"
alias .cp-vs="cp -r ${D_VS}/{css,snippets,{keybindings,settings}.json} ${D_SOURCE}/.vs"
