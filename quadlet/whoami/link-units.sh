#!/usr/bin/bash

if [ -n "$XDG_DATA_HOME" ]
then
  ln -s "$PWD/whoami.container" \
        "$XDG_DATA_HOME/containers/systemd/whoami.container"

  ln -s "$PWD/whoami.network" \
        "$XDG_DATA_HOME/containers/systemd/whoami.network"

  ln -s "$PWD/whoami.image" \
        "$XDG_DATA_HOME/containers/systemd/whoami.image"
else
  ln -s "$PWD/whoami.container" \
        ~/.config/containers/systemd/whoami.container

  ln -s "$PWD/whoami.network" \
        ~/.config/containers/systemd/whoami.network

  ln -s "$PWD/whoami.image" \
        ~/.config/containers/systemd/whoami.image
fi
