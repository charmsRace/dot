#!/usr/bin/env bash
# echo "def-path.sh entered"

export PATH=\
:${PATH}\
:${D_BIN}\
:"${AKASHA}/aseprite/"\
:"${D_HOME}/sunshine"

# :"${D_I2PD}"\
# :"/c/Users/clarity/AppData/Local/Programs/Microsoft VS Code"

# export PATH=${D_BIN}:${PATH}:"${AKASHA}/aseprite/"
# export PATH="/c/Users/clarity/AppData/Local/Programs/Microsoft VS Code":"${AKASHA}/aseprite/":${PATH}

# declare -a PATHS=( \
#   "${D_BIN}" \
#   # ${D_I2PD} \
#   "${AKASHA}/aseprite/"
#   # C:\\Users\\clarity\\AppData\\Local\\Programs\\Microsoft VS Code\\ \
#   "/c/Users/clarity/AppData/Local/Programs/Microsoft VS Code"
#   "${PATH}" \
# )

# export PATH=$(.join-by ':' ${PATHS[@]})
