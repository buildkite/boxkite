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
