#! /bin/sh

set -e

if [ ! -f ~/.ssh/id_rsa ] && [ ! -z "$SSH_KEY" ]; then 
  echo "Using SSH_KEY found at envvar"
  mkdir -p ~/.ssh
  mkdir -p /etc/ssh
  echo "${SSH_KEY}" > ~/.ssh/id_rsa
  echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config
  chmod 0600 ~/.ssh/*
fi

if [ -z "$PLUGIN_CMD" ]; then
  echo "cmd is not set"
  exit 1
fi

dep $PLUGIN_CMD
