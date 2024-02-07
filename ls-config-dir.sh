#!/usr/bin/bash

root="$HOME"
if [ -n "$XDG_CONFIG_HOME" ]
then
  root="$XDG_CONFIG_HOME"
fi

echo "Listing: $root/systemd/user"
ls -l "$root/systemd/user"
echo ""

echo "Listing: $root/systemd/user/default.target.wants"
ls -l "$root/systemd/user/default.target.wants"
echo ""
