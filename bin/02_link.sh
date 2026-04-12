#!/bin/zsh

if [ "$(uname)" != "Darwin" ] ; then
	echo "Not macOS!"
	exit 1
fi

SCRIPT_ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# For user directory.
echo "Linking for user directory"
link_dotfiles() {
    local src_dir="$1"
    local dest_dir="$2"
    local pattern="$3"

    for item in "${src_dir}"/${pattern} ; do
        [[ -e "$item" ]] || continue
        [[ "$item" == "${src_dir}/.DS_Store" ]] && continue

        local name="${item##*/}"
        local dest="${dest_dir}/${name}"

        if [ -d "$item" ]; then
            mkdir -p "$dest"
            link_dotfiles "$item" "$dest" "*"
        else
            ln -fnsv "$item" "$dest"
        fi
    done
}
link_dotfiles "${SCRIPT_ROOT_DIR}/etc" "$HOME" ".??*"

# For Visual Studio Code
echo "Linking for Visual Studio Code"
ln -fnsv "${SCRIPT_ROOT_DIR}/etc/visual-studio-code/settings.json" "$HOME/Library/Application Support/Code/User"
ln -fnsv "${SCRIPT_ROOT_DIR}/etc/visual-studio-code/mcp.json" "$HOME/Library/Application Support/Code/User"
ln -fnsv "${SCRIPT_ROOT_DIR}/etc/visual-studio-code/extensions.json" "$HOME/.vscode"

# For Java
echo "Linking for Java"
JAVA_JDK_SRC="$(brew --prefix)/opt/openjdk/libexec/openjdk.jdk"
JAVA_JDK_DEST="/Library/Java/JavaVirtualMachines/openjdk.jdk"

if ! ln -sfn "$JAVA_JDK_SRC" "$JAVA_JDK_DEST"; then
	echo "Unable to create Java symlink at $JAVA_JDK_DEST."
	echo "Creating a symlink in /Library/Java/JavaVirtualMachines requires elevated privileges."
	echo "Run the following command manually:"
	echo "  sudo ln -sfn \"$JAVA_JDK_SRC\" \"$JAVA_JDK_DEST\""
fi
