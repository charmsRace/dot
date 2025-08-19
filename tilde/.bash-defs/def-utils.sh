#!/usr/bin/env bash
# echo "def-utils.sh entered"

.run-if-exists() {
  [[ -f ${1} ]] && . ${1}
}

# e.g. `.join-by , myArray`
.join-by() {
  local IFS=${1}
  shift
  local items=(${@})
  echo "${items[*]}"
}
