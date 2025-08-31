#!/bin/bash

if [ "$(uname)" != "Darwin" ] ; then
	echo "Not macOS!"
	exit 1
fi

# For Dock
echo "Setting up Dock preferences..."
defaults write com.apple.dock autohide -bool true
killall Dock

# For Finder
echo "Setting up Finder preferences..."
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
defaults write com.apple.finder AppleShowAllFiles -bool true
killall Finder

