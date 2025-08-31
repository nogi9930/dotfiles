# Do everything.
# defaults is not run by default.
all: init link brew asdf vscode

# Set macOS system preferences.
defaults:
	@echo "\033[0;34m[Makefile] Run defaults.sh\033[0m"
	@bin/defaults.sh | sed 's/^/[defaults.sh] /'
	@echo "\033[0;34m[Makefile] Done.sh\033[0m"

# Set initial preference.
init:
	@echo "\033[0;34m[Makefile] Run init.sh\033[0m"
	@bin/init.sh | sed 's/^/[init.sh] /'
	@echo "\033[0;34m[Makefile] Done.sh\033[0m"

# Link dotfiles.
link:
	@echo "\033[0;34m[Makefile] Run link.sh\033[0m"
	@bin/link.sh | sed 's/^/[link.sh] /'
	@echo "\033[0;34m[Makefile] Done.sh\033[0m"

# Install macOS applications.
brew:
	@echo "\033[0;34m[Makefile] Run brew.sh\033[0m"
	@bin/brew.sh | sed 's/^/[brew.sh] /'
	@echo "\033[0;34m[Makefile] Done.sh\033[0m"

# Install Programming Language use asdf.
asdf:
	@echo "\033[0;34m[Makefile] Run asdf.sh\033[0m"
	@bin/asdf.sh | sed 's/^/[asdf.sh] /'
	@echo "\033[0;34m[Makefile] Done.sh\033[0m"

# Install Visual Studio Code extensions.
vscode:
	@echo "\033[0;34m[Makefile] Run vscode.sh\033[0m"
	@bin/vscode.sh | sed 's/^/[vscode.sh] /'
	@echo "\033[0;34m[Makefile] Done.sh\033[0m"
