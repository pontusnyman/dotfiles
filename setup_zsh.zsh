#!/usr/bin/env zsh

echo "\n<<<Starting ZSH Setup >>>\n"

# Installation unnecessary: its in th Brewfile.

echo "Enter superuser (sudo password to edit /etc/shells"
echo '/usr/local/bin/zsh' | sudo tee -a '/etc/shells'

echo "Enter user password to to change shell"
chsh -s '/usr/local/bin/zsh'
