#!/usr/bin/bash

# Create a new workspace
workspacesNew() {
  local red="\e[0;31m";
  local green="\e[1;32m";
  local blue="\e[1;34m";
  local reset="\e[0m";
  local root="${HOME}/.workspaces";
  local name="$2";

  if [ ! -d "${root}" ]; then
    echo -e "'${red}${root}${reset}' directory not found";
    echo -e "Run the command: ${green}workspaces init${reset} to initialize it.";
    return 1;
  else
    if [ ! -d "${root}/${name}" ]; then
      mkdir -p "${root}/${name}";
      echo -e "Workspace '${green}${root}/${name}${reset}' was created successfully.";
      exit 0;
    else
      echo -e "Workspace '${blue}${root}/${name}${reset}' already exist.";
      return 1;
    fi
  fi
}
