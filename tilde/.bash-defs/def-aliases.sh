#!/usr/bin/env bash
# echo "def-aliases.sh entered"

alias _="sudo"
alias ..="cd .."
alias ...="cd ../.."
alias .rl=". ~/.bashrc"

alias sagi="sudo apt-get install"

alias tailf="clear && tail -fn +1"
alias tailw="clear && tail -fn +1 \"$(ls -t | head -n1)\""

alias g="git" # more shortcuts defined in ~/.gitconfig

# shortcuts to quickly edit configuration files
alias brc="vim ~/.bashrc"
alias bdi="vim ${D_DEFS}/index.sh"
alias bda="vim ${D_DEFS}/def-aliases.sh"
alias vrc="vim ~/.vimrc"

# for a Jira directory
alias lsj="ls -agGhp | cut -c18-90"

# maven
alias smvn="mvn -T 1C -e"
alias smvn-l="mvn -T 1C -e -l ./$(${DATEF[@]}).log"

# for chroots
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
fi
