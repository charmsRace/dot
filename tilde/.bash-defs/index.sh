#!/usr/bin/env bash
# echo "index.sh entered"

declare -a SOURCES=( \
  envars \ # ensure this comes first
  aliases \
  utils \
  path \
  private \
  # private.example \
  prompt \
  scripts \
  symlinks \
)

declare FILE_NAME
for SOURCE in ${SOURCES[@]}; do
  FILE_NAME=${D_HOME}/.bash-defs/def-${SOURCE}.sh
  [[ -f ${FILE_NAME} ]] && . ${FILE_NAME}
done

unset SOURCES
unset SOURCE
unset FILE_NAME

# declare -a DIRECTORY_NAMES=( \
# .vendor \
# )

# for DIRECTORY_NAME in ${DIRECTORY_NAMES[@]}; do
# .run-if-exists "${D_DEFS}/${DIRECTORY_NAME}/index.sh"
# done

# unset DIRECTORY_NAMES
# unset DIRECTORY_NAME
