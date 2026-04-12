#!/bin/zsh

if [ "$(uname)" != "Darwin" ] ; then
	echo "Not macOS!"
	exit 1
fi

# Programming language setup using asdf

## Add asdf plugin for Node.js
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git

## Add asdf plugin for Erlang
asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git

## Add asdf plugin for Elixir
asdf plugin add elixir https://github.com/asdf-vm/asdf-elixir.git

## Add asdf plugin for Python
asdf plugin add python https://github.com/asdf-community/asdf-python.git

### Add asdf plugin for uv tool
asdf plugin add uv https://github.com/asdf-community/asdf-uv.git

## Add asdf plugin for Flutter
asdf plugin add flutter https://github.com/asdf-community/asdf-flutter.git

