#!/usr/bin/sh

if [ -z "$XDG_DATA_HOME" ]
then
  ln -s "$PWD/systemd/workshop-files.service" \
        "$XDG_DATA_HOME/systemd/user/workshop-files.service"
  ln -s "$PWD/systemd/workshop-files-create-dir.service" \
        "$XDG_DATA_HOME/systemd/user/workshop-files-create-dir.service"
else
  ln -s "$PWD/systemd/workshop-files.service" \
        ~/.config/systemd/user/workshop-files.service
  ln -s "$PWD/systemd/workshop-files-create-dir.service" \
        ~/.config/systemd/user/workshop-files-create-dir.service
fi
