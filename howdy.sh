#!/bin/bash

require() {
  SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  source ${SCRIPTDIR}/deps/$1.sh
}

require term/term

howdy() {
  name=${1:-"partner"}
  color=${2:-"blue"}
  term_color ${color}
  echo "Howdy ${name}!"
}

if [[ ${BASH_SOURCE[0]} != $0 ]]; then
  export -f howdy
else
  howdy "${@}"
  exit $?
fi