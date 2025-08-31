#!/bin/bash

if [ "$(uname)" != "Darwin" ] ; then
	echo "Not macOS!"
	exit 1
fi

echo "Setting up Visual Studio Code"
code --add-mcp '{"name":"playwright","command":"npx","args":["@playwright/mcp@latest"]}'