#!/usr/bin/bash

# See these manual pages for more information
# `man systemd-notify`
# `man trap`

echo "Starting up!"

trap 'echo "Shutting down!"; systemd-notify --stopping; exit 0' TERM
trap 'echo "Shutting down!"; systemd-notify --stopping; exit 0' INT

if [ -n "$NOTIFY_SOCKET" ]
then
  echo "Ready!"
  systemd-notify --ready
else
  echo "\$NOTIFY_SOCKET is not set"
  exit 1
fi

echo "Zzzzz"
sleep infinity
