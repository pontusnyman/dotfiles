#!/usr/bin/env zsh

echo "\n<<<Starting Node Setup >>>\n"

# Node versions are manged with 'n' wich is in the BRewfile
# SEE zshrc for N_PERFIX cariavle nd addition to PATH.

if exists node; then
  echo "Node $(node --version) & NPM $(npm --version) already installed"
else
  echo "Installing Node & NPM with n.."
  n lts
fi

# Install Global NPM Packages
# npm install --global
echo "Global NPM Packages Installed:"
npm list --global --depth=0