#!/usr/bin/bash

# Not sure how these if statements work?
# Run `man test` to learn more!

if [ -n "$XDG_CONFIG_HOME" ]
then
  echo "XDG_CONFIG_HOME is set!"
  echo "Creating \"$XDG_CONFIG_HOME/containers/systemd\" if it doesn't exist"

  [ ! -d "$XDG_CONFIG_HOME/containers/systemd" ] && \
  mkdir -p "$XDG_CONFIG_HOME/containers/systemd"
else
  echo "XDG_CONFIG_HOME is not set!"
  echo "Creating ~/.config/containers/systemd if it doesn't exist"

  [ ! -d ~/.config/containers/systemd ] && \
  mkdir -p ~/.config/containers/systemd
fi
