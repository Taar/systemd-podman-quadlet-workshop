#!/usr/bin/bash

root="$HOME"
if [ -n "$XDG_CONFIG_HOME" ]
then
  root="$XDG_CONFIG_HOME"
fi

ln -s "$PWD/my-pictures.service" \
      "$root/systemd/user/my-pictures.service"

ln -s "$PWD/my-pictures-create-dir.service" \
      "$root/systemd/user/my-pictures-create-dir.service"
