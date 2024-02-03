#!/usr/bin/bash

readonly binary_name="podman-user-generator"
readonly user_generator_paths=(
  "/run/systemd/user-generators"
  "/etc/systemd/user-generators"
  "/usr/local/lib/systemd/user-generators"
  "/usr/lib/systemd/user-generators"
)

function check_paths {
  a=("$@")
  for dir in "${a[@]}"
  do
    echo "Checking $dir ..."
    if [ -d "$dir" ] && [ -f "$dir/$binary_name" ]
    then
      echo "Found at: $dir/$binary_name"
      echo ""
      echo "Symbolic link to: "
      readlink -f "$dir/$binary_name"
      break;
    else
      echo "Not found!"
    fi
  done
}

check_paths "${user_generator_paths[@]}"
