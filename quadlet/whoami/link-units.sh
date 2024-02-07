#!/usr/bin/bash

root="$HOME/.config"
if [ -n "$XDG_CONFIG_HOME" ]
then
  root="$XDG_CONFIG_HOME"
fi

ln -s "$PWD/whoami.container" \
      "$root/containers/systemd/whoami.container"

ln -s "$PWD/whoami.network" \
      "$root/containers/systemd/whoami.network"

ln -s "$PWD/whoami.image" \
      "$root/containers/systemd/whoami.image"
