#!/usr/bin/env bash
# echo "def-aliases.sh entered"

# shortcuts to quickly edit configuration files
alias brc="vim ~/.bashrc"
alias bdi="vim ${D_DEFS}/index.sh"
alias bda="vim ${D_DEFS}/def-aliases.sh"
alias bde="vim ${D_DEFS}/def-envars.sh"
alias gcf="vim ~/.gitconfig"
alias vrc="vim ~/.vimrc"
alias hfl="vim /c/WINDOWS/System32/drivers/etc/hosts"

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
alias groot='cd $(git rev-parse --show-toplevel)'

alias isup="ping 8.8.8.8"

# navigation shortcuts
alias cdefs="cd ${D_DEFS}"
alias ~~="cd ~"
alias c.="cd ${D_DOT}"
alias c-="cd - > /dev/null"

# dotfile tools
alias cpdot="cp -r ~/.{vimrc,git{config,ignore-global},bash{rc,-defs,_profile}} ${D_SOURCE}"
alias cpvs="cp -r ${D_VS}/{snippets,{keybindings,settings}.json} ${D_SOURCE}/.vs"

# maven
alias smvn="mvn -e -T 1C"
alias smvnc="mvn -e -T 1C clean"
alias smvnci="mvn -e -T 1C clean && mvn -e -T 1C -P va-dev install"
alias smvnl="mvn -e -T 1C -l ${D_OTMS}/@alex/mvn-$(${DATE_FORMAT[@]}).log -P va-dev"
alias smvn-full="mvn -e -T 1C clean && mvn -e -T 1C -l ${D_OTMS}/@alex/mvn-$(${DATE_FORMAT[@]}).log -P va-dev install"

# otms-dev-tool
alias odev="node ~/git/opentms-dev-tool/index.js"

# start OTMS GWT code server
alias otmscs="bash ${D_OTMS}/@alex/code-server.sh"
alias otmswar="cd ${D_OTMS_TOMCAT}/webapps && rm -rf ./opentms*"

# guvnor tomcat instance
alias guvstart="bash ${D_GUVNOR}/bin/catalina.sh start"
alias guvstop="bash ${D_GUVNOR}/bin/catalina.sh stop"

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
