#!/usr/bin/env bash
#
#
# main()
#
{
  GREEN="\e[32m"
  YELLOW="\e[33m"
  NOCOLOR="\e[39m"

  echo "Confirm and update build dependencies..."

  DEPS_UPDATE=$(ncu "$@");
  echo "$DEPS_UPDATE"

  DEPS_LOG=$(ncu);
  echo $DEPS_LOG

  printf "${YELLOW}Generate dependency log...${NOCOLOR}"
  echo "Dependency update log" > ./dependency-update-log.txt
  echo "$DEPS_UPDATE" >> ./dependency-update-log.txt
  echo "$DEPS_LOG" >> ./dependency-update-log.txt
  printf "${GREEN}COMPLETED${NOCOLOR}\n"
  printf "${YELLOW}Log generated at ./dependency-update-log.txt${NOCOLOR}\n"
}
