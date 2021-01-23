#!/usr/bin/env bash
# echo "def-scripts.sh entered"

# Run AutoHotkey scripts
AHK_SOURCE=${D_AHK}/run.sh
[[ -f ${AHK_SOURCE} ]] && . ${AHK_SOURCE}
