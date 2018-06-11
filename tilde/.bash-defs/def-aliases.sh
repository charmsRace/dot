#!/usr/bin/env bash
# echo "def-aliases.sh entered"

# shortcuts to quickly edit configuration files
alias brc="vim ~/.bashrc"
alias bdi="vim ${D_DEFS}/index.sh"
alias bda="vim ${D_DEFS}/def-aliases.sh"
alias vrc="vim ~/.vimrc"

# general
alias _="sudo"
alias sagi="sudo apt-get install"
alias .rl=". ~/.bashrc"

alias ..="cd .."
alias ...="cd ../.."

alias lsd="ls -aghpr --group-directories-first"
alias lst="ls -aghpt"
alias ..l="cd ..; ls -agGhp"
alias lsj="ls -agGhp | cut -c18-90" # for Jira

alias treeg="tree -aI \.git"

alias tailf="clear && tail -fn +1"
alias tailw="clear && tail -fn +1 \"$(ls -t | head -n1)\""

alias g="git" # more macros defined in ~/.gitconfig

# maven
alias smvn="mvn -e -T 1C"
alias smvn-l="mvn -T 1C -e -l ./$(${DATEF[@]}).log"

# for chromebooks with chroots
if false; then
    alias crouton="sudo sh ~/Downloads/crouton"
    alias edit-chroot="sudo edit-chroot"
    alias enter-chroot="sudo enter-chroot"
    alias mount-chroot="sudo mount-chroot"
    alias unmount-chroot="sudo unmount-chroot"

    alias x="xiwi"
    alias xt="xiwi -T"
    alias xf="xiwi -F"
    alias vsc="xiwi code-oss"

    alias akasha="sudo startxfce4 -n akasha -X xorg"
    alias akasha@cli="sudo enter-chroot -n akasha"
    alias akasha@win="sudo startxfce4 -n akasha -X xiwi"
    alias akasha@tab="sudo startxfce4 -n akasha -X xiwi-tab"

    alias attendum="sudo startcli -n attendum"

    alias code="code-oss"
    alias c.="code-oss ."
fi
