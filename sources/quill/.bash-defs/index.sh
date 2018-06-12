#!/usr/bin/env bash
# echo "index.sh entered"

declare -a SOURCES=( \
    envars \ # ensure this comes first
    aliases \
    path \
    prompt \
    symlinks \
)

for i in ${SOURCES[@]}; do
    declare SOURCE=~/.bash-defs/def-${i}.sh
    [[ -f $SOURCE ]] && . $SOURCE
done

unset SOURCES SOURCE
