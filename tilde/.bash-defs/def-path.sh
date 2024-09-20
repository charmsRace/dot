#!/usr/bin/env bash
# echo "def-path.sh entered"

declare -a PATHS=( \
  ${D_BIN} \
  # ${D_I2PD} \
  ${PATH} \
)

export PATH=$(.join-by ':' ${PATHS[@]})
