#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
BROWN='\033[0;33m'
CYAN='\033[0;36m'
NC='\033[0m'

commands=( "$@" )

dirs=$(find . -type d -d 1)

for folder in $dirs; do
  cd "$folder" || exit
  echo -e "${GREEN}Executing commands in: ${CYAN}$folder${NC}"

  for command in "${commands[@]}"; do
    echo -e "${BROWN}Executing: $command${NC}"
    $command
  done
  echo -e "${GREEN}==========================================${NC}\n"
  cd ..
done

