#!/usr/bin/sh

if [ -f ~/.config/systemd/user/my-pictures.service ]
then
  rm ~/.config/systemd/user/my-pictures.service
fi
cp "$PWD/my-pictures.service" ~/.config/systemd/user/my-pictures.service
