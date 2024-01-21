#!/bin/bash
set -e

source "$(dirname "${BASH_SOURCE[0]}")/asdf.bash"
source "$(dirname "${BASH_SOURCE[0]}")/bundle.bash"
source "$(dirname "${BASH_SOURCE[0]}")/colour.bash"

#!/usr/bin/env bash
set -euo pipefail

log() {
  local message="${1}"
  echo "- ${message}"
}

log_divider() {
  echo "------------------------------------------------"
}

log_header() {
  echo
  log_divider
  log "👋 bootstrap for ${green}boxkite${reset}"
  log "💻 Targeted opinions: Mac + Brew + ASDF (only tested on a mac)"
  log_divider
}

wait_with_hint() {
  local hint="${1}"
  read -p "--> Action needed: $hint - Press any key to continue."
}

install_brew_dependencies() {
  echo
  log_divider

  if [[ $(command -v brew) == "" ]]; then
      log "Installing Homebrew (https://https://brew.sh/)"
      /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  else
      echo "Updating Homebrew"
      brew update
  fi

  log "Installing homebrew dependencies"
  brew bundle --no-lock

  log "Cleanup"
  brew cleanup

  log_divider
}

install_asdf_dependencies() {
  log "Installing asdf toolchain"
  asdf.install_toolchain "ruby" "nodejs" "yarn" "postgres"
}

install_ruby_dependencies() {
  log "Installing Ruby gems"
  bundle.install
}

main() {
  log_header

  install_brew_dependencies
  install_asdf_dependencies
  install_ruby_dependencies

  log_divider
  log "${green}Bootstrap successful${reset} ✅"
}

main
