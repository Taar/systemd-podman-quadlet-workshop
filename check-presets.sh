#!/usr/bin/bash

readonly default_preset="99-default.preset"
readonly system_paths=(
  "/etc/systemd/system-preset"
  "/run/systemd/system-preset"
  "/usr/lib/systemd/system-preset"
)
readonly user_paths=(
  "/etc/systemd/user-preset/"
  "/run/systemd/user-preset/"
  "/usr/lib/systemd/user-preset/"
)

function check_paths {
  a=("$@")
  for dir in "${a[@]}"
  do
    echo "Checking $dir/$default_preset ..."
    if [ -f "$dir/$default_preset" ]
    then
      echo "Found! The default is: "
      cat "$dir/$default_preset"
      break;
    else
      echo "Not found!"
    fi
  done
}

echo "If the file 99-default.preset is not found then"
echo "it's likely that the default is \"enabled\" for"
echo "that preset."
echo ""

echo "Checking System Presets ..."
check_paths "${system_paths[@]}"
echo ""

echo "Checking User Presets ..."
check_paths "${user_paths[@]}"
