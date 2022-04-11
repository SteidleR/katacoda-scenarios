#!/bin/bash

# from katacoda scenario-examples
# https://github.com/katacoda/scenario-examples/blob/main/displaying-progress-spinner/assets/wait.sh

show_progress()
{
  echo "Installing" > /root/katacoda-installation
  local -r pid="${1}"
  local -r delay='1'
  local spinstr='\|/-'
  local temp
  while true; do 
    sudo grep -i "done" /root/katacoda-installation &> /dev/null
    if [[ "$?" -ne 0 ]]; then
      text=`cat /root/katacoda-installation`
      temp="${spinstr#?}"
      printf "%s [%c]               " "${text}" "${spinstr}"
      spinstr=${temp}${spinstr%"${temp}"}
      sleep "${delay}"
      printf "\b\b\b\b\b\b\r" 
    else
      break
    fi
  done
  printf "                      \b\b\b\b"
  echo ""
}

show_progress