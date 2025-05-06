#!/usr/bin/bash

# Delete an entire workspace or just its contents
workspacesDel() {
  # Text colors
  local red="\e[1;31m";
  local green="\e[1;32m";
  local blue="\e[1;34m";
  local reset="\e[0m";

  # The root (workspaces) directory
  local root="${HOME}/.workspaces";

  # Content counter
  local count=0;

  if [ ! -d "${root}" ]; then
    echo -e "'${red}${root}${reset}' directory not found.";
    echo -e "Run the command: '${green}workspaces init${reset}' to initialize it.";
    return 1;
  else
    case $# in
      '0')
        echo -e "${red}No arguments was specified${reset}";
        echo -e "Run the command: '${green}workspaces hlp +usage${reset}' for usage information.";
        return 1;
        ;;
      '1')
        local workspace="$1";
        if [ ! -d "${root}/${workspace}" ]; then
          echo -e "Workspace '${red}${root}/${workspace}${reset}' doesn't exist.";
          return 1;
        else
          rm -r --interactive=never "${root}/${workspace}";
          echo -e "Workspace '${green}${root}/${workspace}' was deleted successfully.";
          return 0;
        fi
        ;;
      '2')
        local workspace="$1";
        local option="$2";
        if [ ! -d "${root}/${workspace}" ]; then
          echo -e "Workspace '${red}${root}/${workspace}${reset}' doesn't exist.";
          return 1;
        elif [[ "${option}" == "+dirs" ]]; then
          local args=$@;
          for directory in ${args[@]:2}; do
            if [ ! -d "${root}/${workspace}/${directory}" ]; then
              echo -e "Workspace '${red}${root}"
            fi
          done
        fi
        ;;
    esac
  fi
}
