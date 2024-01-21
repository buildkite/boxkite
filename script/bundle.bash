#!/usr/bin/env bash

source "$(dirname "${BASH_SOURCE[0]}")/colour.bash"

__bundle_installed=""

bundle.ensure_version() {
  if ! gem list --installed bundler > /dev/null; then
    echo "Installing bundler" >&2
    gem install --no-document bundler
  fi
}

bundle.install() {
  if [[ -n "$__bundle_installed" ]]; then
    return
  fi

  echo "--- :bundler: Bundle install..."

  bundle.ensure_version

  bundle install
  __bundle_installed="true"
  echo "^^^ --- :bundler: Bundle install... ${green}OK${reset}"
}
