#!/usr/bin/env bash

set -e

THIS_DIR="$(cd "$(if [[ "${0:0:1}" == "/" ]]; then echo "$(dirname $0)";else echo "$PWD/$(dirname $0)";fi)"; pwd)"
PROJECT_DIR="${THIS_DIR}/.."
THEME_PROJECT_DIR="${PROJECT_DIR}/themes/hugo-nuo"

function main(){
  if [[ ! -d $THEME_PROJECT_DIR ]];then
    git clone https://github.com/xinfeng-tech/hugo-nuo.git $THEME_PROJECT_DIR
  fi
  pushd $THEME_PROJECT_DIR
    git pull
  popd
}
main "$@"
