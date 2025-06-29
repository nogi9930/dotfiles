# dotfiles

## Overview

This repository contains scripts to set macOS.

## Install

1. Download installation materials.

```
# for use HTTPS
git clone https://github.com/nogi9930/dotfiles.git

# for use SSH
git clone git@github.com:nogi9930/dotfiles.git
```

2. Move to target repository.

```
cd dotfiles
```

3. Run the setup script.

```
make
```

4. (Optional) Set macOS system preferences.

```
make defaults
```

## Repository Structure

- `bin/`: Setup script files
- `etc/`: Configuration files
    - `vscode/`: Visual Studio Code settings

## References

- [tsukuboshi/dotfiles](https://github.com/tsukuboshi/dotfiles)