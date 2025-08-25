#!/usr/bin/env bash
# echo "def-aliases.sh entered"

# shortcuts to quickly edit configuration files
alias .edit-bashrc="vim ${D_HOME}/.bashrc"
alias .edit-bash-index="vim ${D_DEFS}/index.sh"
alias .edit-bash-aliases="vim ${D_DEFS}/def-aliases.sh"
alias .edit-bash-envars="vim ${D_DEFS}/def-envars.sh"
alias .edit-bash-private="vim ${D_DEFS}/def-private.sh"

alias .edit-gitconfig="vim ${D_HOME}/.gitconfig"
alias .edit-gitignore="vim ${D_HOME}/.global.gitignore"
alias .edit-vimrc="vim ${D_HOME}/.vimrc"
alias .edit-hosts="sudoedit /c/WINDOWS/System32/drivers/etc/hosts"
# alias .edit-hosts="code /c/WINDOWS/System32/drivers/etc/hosts"

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

# more git macros defined in ${D_HOME}/.gitconfig
alias .g="git"
alias g="git"
alias gi="git"
alias gt="git"

alias isup="ping 8.8.8.8"

# navigation shortcuts
alias .cd-="cd - > /dev/null"
alias .cg="cd !$:t:r" # e.g. `git clone ...repo.git && .cg

# dotfile tools
alias .cd.="cd ${D_DOT}"
alias .cd-defs="cd ${D_DEFS}"
alias .cd-ahk="cd ${D_AHK}"
alias .cd-vs="cd ${D_VS}"
# alias .cd-snippets="cd ${D_VS_SNIPPETS}"

alias .open.="start ${D_DOT}"
alias .open-defs="start ${D_DEFS}"
alias .open-ahk="start ${D_AHK}"
alias .open-vs="start ${D_VS}"

alias .code.="code ${D_DOT}/.vscode/dot.code-workspace"
alias .code-defs="code ${D_DEFS}"
alias .code-ahk="code ${D_AHK}/.vscode/ahk.code-workspace"
alias .code-vs="code ${D_VS}"
# alias .code-snippets="code ${D_VS}/snippets-meta/snippets.code-workspace"

alias .code-akasha="code ${AKASHA}"
alias .code-aseprite="code ${AK_ASEPRITE}"

alias .cd-revelator="cd ${D_REVELATOR}"
alias .open-revelator="start ${D_REVELATOR}"
alias .code-revelator="code ${D_REVELATOR}"

.code() {
  code "$(ls ./.vscode/*.code-workspace | head -1)"
}

alias .dc="git dcode"

# alias .cp~="cp -r ~/.{bash{-defs,_profile,rc},conemu,git{config,ignore-global},sharpkeys,vimrc} ${D_SOURCE}"
# alias .cp-vs="cp -r ${D_VS}/{css,snippets,{keybindings,settings}.json} ${D_SOURCE}/.vs"

alias .ssh-start="eval \"$(ssh-agent -s)\""
alias .ssh-github=".ssh; ssh-add ${D_SSH}/github" # TODO: ?

alias .start-ahk=".run-if-exists ${D_AHK}/run.sh"
alias .kill-ahk="WMIC PROCESS where \"Name='AutoHotkey.exe'\" CALL Terminate"
alias .cycle-ahk=".kill-ahk; .start-ahk" # correct connective? quiet?

alias .kill-java="WMIC PROCESS where \"Name like 'java%'\" CALL Terminate"
alias .kill-gradle="WMIC PROCESS where \"Name like 'java%' AND CommandLine like '%GradleDaemon%'\" CALL Terminate"

# PGP
alias .decrypt-clipboard="cat ${CLIP} | gpg --decrypt"

# Akasha
alias @K="cd ${AKASHA}"

# JS tools
alias ts-node="npx ts-node"
alias .rm-node-modules="npx remove-node-modules"
alias .rm-node-cache="rm -rf ./node_modules/.cache"

# NPM tools
alias npm-list-global="npm list g --depth 0"
alias yarn-link-list="ls -la node_modules | grep ^l"

# AHK tools
.run-ahk() {
  . ${D_AHK}/run.sh
}

alias .set=".set-ticket"
.set-ticket() {
  local regex='^[0-9]+$'
  if [[ ! $1 =~ $regex ]]; then
    echo "ERROR: Invalid ticket number" >&2
    return
  fi

  sed -i "s/\(^ *FeatureTicket := \)[[:digit:]]\+$/\1$1/" ${D_AHK}/scripts/private/ticket-interpolation.ahk
  .run-ahk
}

alias .set-yall=".set-yall-ticket"
.set-yall-ticket() {
  local regex='^[0-9]+$'
  if [[ ! $1 =~ $regex ]]; then
    echo "ERROR: Invalid ticket number" >&2
    return
  fi

  sed -i "s/\(^ *IntegrationTicket := \)[[:digit:]]\+$/\1$1/" ${D_AHK}/scripts/private/ticket-interpolation.ahk
  .run-ahk
}

# Unused
# alias python2="winpty /c/Python27/python.exe"
# alias py2=python2
# alias py3=python3
# alias protocol="code ${D_GIT}/protocol_1/protocol.txt"
# alias .net="dotnet"
# alias .tg=".net run --"
# alias .code-tg="code ${AKASHA}/revelator/Tropogram/.vscode/tropogram.code-workspace"
