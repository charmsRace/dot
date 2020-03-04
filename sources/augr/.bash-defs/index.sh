#!/usr/bin/env bash
# echo "index.sh entered"

declare -a SOURCES=( \
    envars \ # ensure this comes first
    aliases \
    path \
    private \
    prompt \
    scripts \
    symlinks \
)

declare SOURCE
for i in ${SOURCES[@]}; do
    SOURCE=~/.bash-defs/def-${i}.sh
    [[ -f $SOURCE ]] && . $SOURCE
done

unset SOURCES
unset SOURCE
