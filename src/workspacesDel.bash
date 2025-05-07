#!/usr/bin/bash

# Delete an entire workspace or just its contents
workspacesDel() {
  # Text colors
  local red="\e[1;31m";
  local green="\e[1;32m";
  local blue="\e[1;34m";
  local white="\e[1;37m";
  local reset="\e[0m";

  # The root (workspaces) directory
  local root="${HOME}/.workspaces";

  if [ ! -d "${root}" ]; then
    echo -e "\n'${red}${root}${reset}' ${white}directory not found.${reset}";
    echo -e "${white}Run the command:${reset} ${green}workspaces init${reset} ${white}to initialize it.${reset}\n";
    return 1;
  else
    if [ $# -eq 1 ]; then
      local workspace="$1";

      if [ ! -d "${root}/${workspace}" ]; then
        echo -e "\n${white}Workspace${reset} ${red}${root}/${workspace}${reset} ${white}doesn't exist.${reset}\n";
        return 1;
      else
        echo -en "\n${white}Are you sure you want to delete${reset} ${blue}${root}/${workspace}${reset}${white}?${reset} (y/n): "; read answer;
        case $answer in
          "y" | "Y" | "yes" | "Yes")
            rm -r --interactive=never "${root}/${workspace}" && echo -e "\n${green}Deleted${reset} ${blue}${root}/${workspace}${reset}\n";
            return 0;;
          "n" | "N" | "no" | "No")
            return 0;;
          *)
            echo -e "\n${red}Invalid Option:${reset} '${white}${answer}${reset}'\n";
            return 1;;
        esac
      fi
    elif [ $# -eq 2 ]; then
      local workspace="$1";
      local option="$2";

      if [ ! -d "${root}/${workspace}" ]; then
        echo -e "\n${white}Workspace${reset} ${red}${root}/${workspace}${reset} ${white}doesn't exist.${reset}\n";
        return 1;
      else
        if [ "${option}" == "+all" ]; then
          local contents=( $(ls -a "${root}/${workspace}") );
          
          for entry in ${contents[@]}; do
            rm -r --interactive=never ${root}/${workspace}/${entry};
            echo -e "\n${green}Deleted${reset} ${blue}${root}/${workspace}/${entry}${reset}";
          done
          return 0;
        elif [ "${option}" == "+dir" ] || [ "${option}" == "+file" ]; then
          echo -e "\n${white}Option${reset} ${green}${option}${reset} ${white}needs an argument${reset}\n";
          return 1;
        else
          echo -e "\n${red}Invalid Option:${reset} '${white}${option}${reset}'\n";
          return 1;
        fi
      fi
    elif [ $# -eq 3 ]; then
      local workspace="$1";
      local option="$2";
      local arg="$3";

      if [ ! -d "${root}/${workspace}" ]; then
        echo -e "\n${white}Workspace${reset} ${red}${root}/${workspace}${reset} ${white}doesn't exist.${reset}\n";
        return 1;
      else
        if [ "${option}" == "+all" ]; then
          echo -e "\n${white}Option${reset} '${green}${option}${reset}' ${white}doesn't require any arguments${reset}\n";
          return 1;
        elif [ "${option}" == "+dir" ]; then
          local contents=( $(ls -aR "${root}/${workspace}") );

          for entry in ${contents[@]}; do
            local fullpath="${root}/${workspace}/${entry}";

            if [ -d "${fullpath}" ]; then
              if [ "${entry}" == "${arg}" ]; then
                echo -en "\n${white}Do you want to delete${reset} ${blue}${workspace}/${entry}${reset} (y/n): "; read answer;
                case $answer in
                  "y" | "Y" | "yes" | "Yes")
                    rm -r --interactive=never "${fullpath}" && echo -e "\n${green}Deleted${reset} ${blue}${workspace}/${entry}${reset}";
                    return 0;
                    ;;
                  "n" | "N" | "no" | "No")
                    continue;
                    ;;
                  *)
                    echo -e "${white}Invalid Option${reset} ${red}${answer}${reset}";
                    return 1;
                    ;;
                esac
              else
                continue;
              fi
            else
              continue;
            fi
          done
        elif [ "${option}" == "+file" ]; then
          local folders=();
          local files=();
          local index=0;
      fi
    fi
  fi
}
workspacesDel $@;
