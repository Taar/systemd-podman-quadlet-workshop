#!/usr/bin/sh

root="$HOME"
if [ -n "$XDG_CONFIG_HOME" ]
then
  root="$XDG_CONFIG_HOME"
fi

ln "$PWD/sleep-then-fail.service" "$root/systemd/user/sleep-then-fail.service"
