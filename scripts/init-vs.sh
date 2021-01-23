#!/usr/bin/env bash
# init-vs.sh

if [ -z "${D_VS}" ] ; then
    echo 'VS Code directory is unset. Exiting...'
    exit 1
fi

cp -r ${D_TILDE}/.vs/. ${D_VS}/
