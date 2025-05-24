#!/usr/bin/env bash
# echo "def-path.sh entered"

export PATH=${D_BIN}:${PATH}:"${AKASHA}/aseprite/"
# export PATH="/c/Users/clarity/AppData/Local/Programs/Microsoft VS Code":"${AKASHA}/aseprite/":${PATH}

# declare -a PATHS=( \
#   "${D_BIN}" \
#   # ${D_I2PD} \
#   # C:\\Users\\clarity\\AppData\\Local\\Programs\\Microsoft VS Code\\ \
#   "/c/Users/clarity/AppData/Local/Programs/Microsoft VS Code"
#   "${PATH}" \
# )

# export PATH=$(.join-by ':' ${PATHS[@]})

