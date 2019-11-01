#!/usr/bin/env bash

set -e

THIS_DIR="$(cd "$(if [[ "${0:0:1}" == "/" ]]; then echo "$(dirname $0)";else echo "$PWD/$(dirname $0)";fi)"; pwd)"
PROJECT_DIR="${THIS_DIR}/.."
THEME_PROJECT_DIR="${PROJECT_DIR}/themes/hugo-nuo"

function commit_theme(){
    pushd $THEME_PROJECT_DIR
      git add .
      git commit -m "commit by publish `date`"
      git push
    popd
}

function main(){
  echo -e "\033[32m publish to github... \033[0m"
  commit_theme
  pushd $PROJECT_DIR
   git add .
   git commit -m "update by publish:`date`"
   git push
   bin/deploy_ghpages.sh
  popd
  echo -e "\033[36m publish success! \033[0m"
}
main "$@"
