#!/usr/bin/sh

if [ -n "$XDG_DATA_HOME" ]
then
  ln "$PWD/sleep-then-fail.service" "$XDG_DATA_HOME/systemd/user/sleep-then-fail.service"
else
  ln "$PWD/sleep-then-fail.service" ~/.config/systemd/user/sleep-then-fail.service
fi
