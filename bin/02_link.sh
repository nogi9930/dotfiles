#!/bin/bash

if [ "$(uname)" != "Darwin" ] ; then
	echo "Not macOS!"
	exit 1
fi

SCRIPT_ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# For user directory.
echo "Linking for user directory"
for dotfile in "${SCRIPT_ROOT_DIR}"/etc/.??* ; do
    [[ "$dotfile" == "${SCRIPT_ROOT_DIR}/etc/.DS_Store" ]] && continue

    ln -fnsv "$dotfile" "$HOME"
done

# For Visual Studio Code
echo "Linking for Visual Studio Code"
ln -fnsv "${SCRIPT_ROOT_DIR}/etc/visual-studio-code/settings.json" "$HOME/Library/Application Support/Code/User"
ln -fnsv "${SCRIPT_ROOT_DIR}/etc/visual-studio-code/mcp.json" "$HOME/Library/Application Support/Code/User"
ln -fnsv "${SCRIPT_ROOT_DIR}/etc/visual-studio-code/extensions.json" "$HOME/.vscode"