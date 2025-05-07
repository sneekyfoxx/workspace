#!/usr/bin/bash

# Create a new workspace
workspacesNew() {
  # Colors
  local red="\e[0;31m";
  local green="\e[1;32m";
  local blue="\e[1;34m";
  local white="\e[1;37m";
  local reset="\e[0m";

  # Root directory
  local root="${HOME}/.workspaces";

  # Workspace name
  local name="$1";

  if [ ! -d "${root}" ]; then
    echo -e "\n'${red}${root}${reset}' ${white}directory not found.${reset}";
    echo -e "${white}Run the command:${reset} ${green}workspaces init${reset} ${white}to initialize it.${reset}\n";
    return 1;
  else
    if [ ! -d "${root}/${name}" ]; then
      mkdir -p "${root}/${name}";
      echo -e "\n'${blue}${root}/${name}${reset}' ${green}created successfully${reset}\n";
      return 0;
    else
      echo -e "\n'${blue}${root}/${name}${reset}' ${red}already exist${reset}\n";
      return 1;
    fi
  fi
}
workspacesNew $@;
