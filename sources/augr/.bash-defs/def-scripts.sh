#!/usr/bin/env bash
# echo "def-scripts.sh entered"

# Run AutoHotkey scripts from within AHK directory
(
  cd ${D_AHK};
  start ./scripts/index.ahk
)
