#!/usr/bin/env zsh

echo "\n<<<Starting macOS Setup >>>\n"

osascript -e 'tell application "System Preferences" to quit'

# Finder > View > Show Path Bar
defaults write com.apple.finder ShowPathbar -bool true

# Finder > Preferences > General > New Finder windows show:
defaults write com.apple.finder NewWindowTarget -string 'PfLo'
defaults write com.apple.finder NewWindowTargetPath -string "file://$HOME/.dotfiles"

# System Preferences > Dock
defaults write com.apple.dock magnification -bool false
defaults write com.apple.dock "tilesize" -int "40"
defaults write com.apple.dock "orientation" -string "left"
defaults write com.apple.dock "show-recents" -bool "false"

# System Preferences > Menu bar
defaults write com.apple.menuextra.clock "DateFormat" -string "\"EEE d MMM HH:mm:ss\"" 

# System Preferences > Accessibility > Pointer Control > Mouse & Trackpad > Trackpad Options > Enable Dragging > Three Finger Drag (NOTE: The GUI doesn't update)
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true

# Finish macOS Setup
killall Finder
killall Dock
echo "\n<<< macOS Setup Complete.
    A logout or restart might be necessary. >>>\n"