# Do everything.
# defaults is not run by default.
all: init link brew asdf vscode

# Set macOS system preferences.
defaults:
	@echo "\033[0;34m[Makefile] Run 00_defaults.sh\033[0m"
	@bin/00_defaults.sh | sed 's/^/[00_defaults.sh] /'
	@echo "\033[0;34m[Makefile] Done.sh\033[0m"

# Set initial preference.
init:
	@echo "\033[0;34m[Makefile] Run 01_init.sh\033[0m"
	@bin/01_init.sh | sed 's/^/[01_init.sh] /'
	@echo "\033[0;34m[Makefile] Done.sh\033[0m"

# Link dotfiles.
link:
	@echo "\033[0;34m[Makefile] Run 02_link.sh\033[0m"
	@bin/02_link.sh | sed 's/^/[02_link.sh] /'
	@echo "\033[0;34m[Makefile] Done.sh\033[0m"

# Install macOS applications.
brew:
	@echo "\033[0;34m[Makefile] Run 03_brew.sh\033[0m"
	@bin/03_brew.sh | sed 's/^/[03_brew.sh] /'
	@echo "\033[0;34m[Makefile] Done.sh\033[0m"

# Install Programming Language use asdf.
asdf:
	@echo "\033[0;34m[Makefile] Run 04_asdf.sh\033[0m"
	@bin/04_asdf.sh | sed 's/^/[04_asdf.sh] /'
	@echo "\033[0;34m[Makefile] Done.sh\033[0m"

# Install Visual Studio Code extensions.
vscode:
	@echo "\033[0;34m[Makefile] Run 05_vscode.sh\033[0m"
	@bin/05_vscode.sh | sed 's/^/[05_vscode.sh] /'
	@echo "\033[0;34m[Makefile] Done.sh\033[0m"
