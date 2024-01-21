#!/usr/bin/env bash
#
# https://upload.wikimedia.org/wikipedia/commons/1/15/Xterm_256color_chart.svg

set -o noglob

export reset=$(tput sgr0)

export red=$(tput setaf 001)
export blue=$(tput setaf 012)
export green=$(tput setaf 002)
export orange=$(tput setaf 003)
export grey=$(tput setaf 007)

colour.dump() {
  color(){
    for c; do
      printf '\e[48;5;%dm%03d ' $c $c
    done
    printf '\e[0m \n'
  }

  IFS=$' \t\n'
  color {0..15}

  for ((i=0;i<6;i++)); do
    color $(seq $((i*36+16)) $((i*36+51)))
  done

  color {232..255}
}

__color() {
  echo "${1}${2:-}${reset}"
}

colour.reset()    { echo "$reset"; }

colour.dim()    { __color $dim ${1:-}; }

colour.red()   { __color $red ${1:-};  }
colour.blue()    { __color $blue ${1:-};  }
colour.green()   { __color $green ${1:-};  }
colour.orange()  { __color $orange ${1:-}; }
colour.grey()    { __color $grey ${1:-}; }
