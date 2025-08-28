#!/usr/bin/env bash

declare SSH_EXAMPLE=${D_SSH}/example

# Generate key
ssh-keygen \
  -f ${SSH_EXAMPLE} \
  -t rsa \
  -b 4096 \
  -C "example@gmail.com"

# Start `ssh-agent`
eval $(ssh-agent -s)

# Add key to `ssh-agent`
ssh-add ${SSH_EXAMPLE}

# Copy public key to clipboard
clip < ${SSH_EXAMPLE}.pub
