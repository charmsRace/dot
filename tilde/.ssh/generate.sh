#!/usr/bin/env bash

declare SSH_EXAMPLE=${D_SSH}/example

# Generate key
ssh-keygen \
  -f ${SSH_EXAMPLE} \
  -t ed25519 \
  -C "ex@mple.com"

# Start `ssh-agent`
eval $(ssh-agent -s)

# Add key to `ssh-agent`
ssh-add ${SSH_EXAMPLE}

# Copy public key to clipboard
clip < ${SSH_EXAMPLE}.pub
