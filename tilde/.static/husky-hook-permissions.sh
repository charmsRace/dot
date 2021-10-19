#!/usr/bin/env bash

alias find-hooks="find .husky/ -maxdepth 1 -type f ! -name .gitignore"
alias list-hooks="git ls-tree @ $(find-hooks)"
alias chmod-hooks="git update-index --chmod=+x $(find-hooks)"
