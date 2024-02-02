#!/usr/bin/bash

if [ -n "$XDG_DATA_HOME" ]
then
  ln "$PWD/my-pictures.service" "$XDG_DATA_HOME/systemd/user/my-pictures.service"
else
  ln "$PWD/my-pictures.service" ~/.config/systemd/user/my-pictures.service
fi
