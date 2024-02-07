#!/usr/bin/bash

root="$HOME/.config"
if [ -n "$XDG_CONFIG_HOME" ]
then
  root="$XDG_CONFIG_HOME"
fi

ln "$PWD/type-notify.service" "$root/systemd/user/type-notify.service"
