#!/usr/bin/env bash
# echo "def-aliases.sh entered"

# shortcuts to quickly edit configuration files
alias brc="vim ${D_HOME}/.bashrc"
alias bdi="vim ${D_DEFS}/index.sh"
alias bda="vim ${D_DEFS}/def-aliases.sh"
alias bde="vim ${D_DEFS}/def-envars.sh"
alias bdp="vim ${D_DEFS}/def-private.sh"

alias gcf="vim ${D_HOME}/.gitconfig"
alias vrc="vim ${D_HOME}/.vimrc"
alias hfl="sudoedit /c/WINDOWS/System32/drivers/etc/hosts"

# general
alias _="sudo"
alias sagi="sudo apt-get install"
alias .relog=". ${D_HOME}/.bashrc"

# alias thisdir='echo $(dirname "$(readlink -f "${BASH_SOURCE[0]}")")'

alias ..="cd .."
alias ...="cd ../.."

alias lsd="ls -aghpr --group-directories-first"
alias lst="ls -aghpt"
alias ..l="cd ..; ls -agGhp"

alias tree-raw="npx @structure-codes/cli"
alias tree="tree-raw | sed -E 's/│  /│ /g' -"
_treews() {
  tree-raw | sed -E 's/│  /│ /g; s/[(└─)(─ )(├─)(│ )]/  /g; s/ {4}/  /g; s/^ {4}//g'
}
alias tree-ws="_treews" # '-' disallowed in function names

alias tailf="clear && tail -fn +1"
alias tailw="clear && tail -fn +1 \"$(ls -t | head -n1)\""

alias g="git" # more macros defined in ${D_HOME}/.gitconfig

alias isup="ping 8.8.8.8"

# navigation shortcuts
alias c-="cd - > /dev/null"
alias cg="cd !$:t:r"

# dotfile tools
alias .cd.="cd ${D_DOT}"
alias .cd-defs="cd ${D_DEFS}"
alias .cd-ahk="cd ${D_AHK}"
alias .cd-vs="cd ${D_VS}"
alias .cd-snippets="cd ${D_VS_SNIPPETS}"

alias .code.="code ${D_DOT}/.vscode/dot.code-workspace"
alias .code-defs="code ${D_DEFS}"
alias .code-ahk="code ${D_AHK}"
alias .code-vs="code ${D_VS}"
alias .code-snippets="code ${D_VS}/snippets-meta/snippets.code-workspace"

.code() {
  code "$(ls ./.vscode/*.code-workspace | head -1)"
}

alias .cp~="cp -r ~/.{bash{-defs,_profile,rc},conemu,git{config,ignore-global},sharpkeys,vimrc} ${D_SOURCE}"
alias .cp-vs="cp -r ${D_VS}/{css,snippets,{keybindings,settings}.json} ${D_SOURCE}/.vs"

alias .ssh="eval \"$(ssh-agent -s)\""
alias .ssh-github=".ssh; ssh-add ${D_SSH}/github"

# PGP tools
alias decrypt-clipboard="cat /dev/clipboard | gpg --decrypt"

# JS tools
alias ts-node="npx ts-node"
alias rnm="npx remove-node-modules"

# NPM tools
alias npm-list-global="npm list g --depth 0"
alias yarn-link-list="ls -la node_modules | grep ^l"

# Python tools
alias python2="winpty /c/Python27/python.exe"
alias py2=python2
alias py3=python3

alias protocol="code ${D_GIT}/protocol_1/protocol.txt"
