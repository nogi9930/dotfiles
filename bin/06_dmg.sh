#!/bin/zsh

if [ "$(uname)" != "Darwin" ] ; then
	echo "Not macOS!"
	exit 1
fi

# Install Maestro
curl -fsSL "https://get.maestro.mobile.dev" | zsh