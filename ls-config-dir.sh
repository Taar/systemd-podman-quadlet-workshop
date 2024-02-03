#!/usr/bin/bash

if [ -n "$XDG_DATA_HOME" ]
then
  echo "Listing: $XDG_DATA_HOME/systemd/user"
  ls -l "$XDG_DATA_HOME/systemd/user"
  echo ""

  echo "Listing: $XDG_DATA_HOME/systemd/user/default.target.wants"
  ls -l "$XDG_DATA_HOME/systemd/user/default.target.wants"
  echo ""
else
  echo "Listing: ~/.config/systemd/user"
  ls -l ~/.config/systemd/user
  echo ""

  echo "Listing: ~/.config/systemd/user/default.target.wants"
  ls -l ~/.config/systemd/user/default.target.wants
fi
