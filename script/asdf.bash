#!/usr/bin/env bash

source "$(dirname "${BASH_SOURCE[0]}")/colour.bash"

asdf::add_plugin() {
  local tool; tool="$1"

  if ! asdf plugin list | grep "$tool"; then
    asdf plugin add "$tool"
  fi
}

asdf::add_plugins() {
  local tools; tools="$1"

  IFS=$' '; for tool in $tools; do
    asdf::add_plugin "$tool"
  done
}

asdf::install() {
  local tools; tools="$1";

  IFS=$' '; for tool in $tools; do
    echo "Installing ${tool}..."
    asdf install "$tool"
  done
}

asdf::update_plugins() {
  asdf plugin update --all
}

asdf.install_toolchain() {
  local tools; tools="$@";

  echo "--- :toolbox: Installing asdf..."
  if asdf::add_plugins "$tools" && asdf::update_plugins && asdf::install "$tools"; then
    asdf info
    asdf current
    echo "^^^ --- :toolbox: Installing asdf... ${green}OK${reset}"
  else
    echo "^^^ --- :toolbox: Installing asdf... ${red}ERROR${reset}"
    return 1
  fi
}
