#!/usr/bin/bash

if [ -n "$XDG_DATA_HOME" ]
then
  ln "$PWD/type-notify.service" "$XDG_DATA_HOME/systemd/user/type-notify.service"
else
  ln "$PWD/type-notify.service" ~/.config/systemd/user/type-notify.service
fi
