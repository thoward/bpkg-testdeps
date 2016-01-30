#!/bin/bash

howdy() {
  name=${1:-"partner"}
  echo "Howdy ${name}!" 
}

if [[ ${BASH_SOURCE[0]} != $0 ]]; then
  export -f howdy
else
  howdy "${@}"
  exit $?
fi
