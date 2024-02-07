#!/usr/bin/bash

# Not sure how these if statements work?
# Run `man test` to learn more!

root="$HOME/.config"
if [ -n "$XDG_CONFIG_HOME" ]
then
  root="$XDG_CONFIG_HOME"
fi

echo "Creating \"$root/systemd/user\" if it doesn't exist"

[ ! -d "$root/systemd/user" ] && \
mkdir -p "$root/systemd/user"
