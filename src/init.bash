#!/usr/bin/bash

# Initializes the '.workspaces' directory
workspacesInit() {
  # Text colors
  local green="\e[1;32m";
  local blue="\e[1;34m";
  local reset="\e[0m";

  # The root (.workspaces) directory
  local root="${HOME}/.workspaces";

  if [ ! -d "${root}" ]; then
    mkdir -p "${root}";
    mkdir -p "${root}"/{.cache,.tracked,.trash};
    echo -e "'${green}${root}${reset}' was successfully initialized.";
    return 0;
  else
    echo -e "'${blue}${root}${reset}' is already initialized.";
    return 1;
  fi
}
workspacesInit;
