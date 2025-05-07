#!/usr/bin/bash

# Add a file or directory to a particular workspace
workspacesAdd() {
  # Colors
  local red="\e[1;31m";
  local green="\e[1;32m";
  local blue="\e[1;34m";
  local white="\e[1;37m";
  local reset="\e[0m";

  # Workspaces root
  local root="${HOME}/.workspaces";

  # Options and arguments
  local workspace="$1";
  local option="$2";
  local arg="$3";

  if [ ! -d "${root}" ]; then
    echo -e "\n'${red}${root}${reset}' ${white}directory not found.${reset}";
    echo -e "${white}Run the command:${reset} ${green}workspaces init${reset} ${white}to initialize it.${reset}\n";
    return 1;
  elif [ ! -d "${root}/${workspace}" ]; then
    echo -e "\n${white}Workspace${reset} ${red}${root}/${workspace}${reset} ${white}doesn't exist.${reset}\n";
    return 1;
  else
    if [ "${option}" == "+dir" ]; then
      mkdir -p "${root}/${workspace}/${arg}";
      echo -e "\n${green}Added Directory${reset} ${blue}${arg}${reset} ${white}to${reset} ${green}${root}/${workspace}/${reset}\n";
      return 0;
    elif [ "${option}" == "+file" ]; then
      touch "${root}/${workspace}/${arg}";
      echo -e "\n${green}Added File${reset} ${blue}${arg}${reset} ${white}to${reset} ${blue}${root}/${workspace}/${reset}\n";
      return 0;
    else
      echo -e "\n${red}Invalid Option:${reset} '${white}${option}${reset}'\n";
      return 1;
    fi
  fi
}
workspacesAdd $@;
