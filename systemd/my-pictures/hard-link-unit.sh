#!/usr/bin/bash

root="$HOME/.config"
if [ -n "$XDG_CONFIG_HOME" ]
then
  root="$XDG_CONFIG_HOME"
fi

ln "$PWD/my-pictures.service" "$root/systemd/user/my-pictures.service"
