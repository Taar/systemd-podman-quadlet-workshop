#!/usr/bin/bash

# Not sure how these if statements work?
# Run `man test` to learn more!

if [ -n "$XDG_DATA_HOME" ]
then
  echo "XDG_DATA_HOME is set!"
  echo "Creating \"$XDG_DATA_HOME/systemd/user\" if it doesn't exist"

  [ ! -d "$XDG_DATA_HOME/systemd/user" ] && \
  mkdir -p "$XDG_DATA_HOME/systemd/user"
else
  echo "XDG_DATA_HOME is not set!"
  echo "Creating ~/.local/share/systemd/user if it doesn't exist"

  [ ! -d ~/.local/share/systemd/user ] && \
  mkdir -p ~/.local/share/system/user
fi

if [ -n "$XDG_CONFIG_HOME" ]
then
  echo "XDG_CONFIG_HOME is set!"
  echo "Creating \"$XDG_CONFIG_HOME/systemd/user\" if it doesn't exist"

  [ ! -d "$XDG_CONFIG_HOME/systemd/user" ] && \
  mkdir -p "$XDG_CONFIG_HOME/systemd/user"
else
  echo "XDG_CONFIG_HOME is not set!"
  echo "Creating ~/.config/systemd/user if it doesn't exist"

  [ ! -d ~/.config/systemd/user ] && \
  mkdir -p ~/.config/system/user
fi
