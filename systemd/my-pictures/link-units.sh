#!/usr/bin/bash

if [ -n "$XDG_DATA_HOME" ]
then
  ln -s "$PWD/my-pictures.service" \
        "$XDG_DATA_HOME/systemd/user/my-pictures.service"
else
  ln -s "$PWD/my-pictures.service" \
        ~/.config/systemd/user/my-pictures.service
fi

if [ -n "$XDG_CONFIG_HOME" ]
then
  ln -s "$PWD/my-pictures-create-dir.service" \
        "$XDG_CONFIG_HOME/systemd/user/my-pictures-create-dir.service"
else
  ln -s "$PWD/my-pictures-create-dir.service" \
        ~/.config/systemd/user/my-pictures-create-dir.service
fi
