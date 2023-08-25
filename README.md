# Automate Vim Plugins Setup for Ubuntu - v1.0

This script automates the setup of common Vim plugins tailored for developers, especially C/C++ developers. It includes popular plugins, configurations, and tools to enhance the Vim experience.

## Features

- **Vim Installation**: Checks and installs Vim if not already present.
- **Clang-format**: Installs and configures clang-format for C/C++ auto-formatting.
- **Vundle**: Vim plugin manager.
- **Popular Vim Plugins**:
  - vim-airline: Status/tabline
  - ctrlp: Fuzzy file finder
  - syntastic: Syntax checking
  - clang_complete: C/C++ code completion
  - NERDTree: File system explorer
  - vim-devicons: Icons for various file types and plugins
  - vim-fugitive: Git wrapper
  - vim-surround: Parentheses, brackets, quotes, XML tags, and more
  - vim-gitgutter: Shows git diff in the gutter
  - fzf: Fuzzy finder
  - vim-commentary: Comment stuff out
  - vim-easymotion: Jump to any location specified by two characters
  - auto-pairs: Insert or delete brackets, parentheses, quotes in pairs
  - vim-clang-format: Clang-format integration

## Usage

1. Clone this repository or download the script.
2. Make the script executable: `chmod +x setup.sh`
3. Run the script: `./setup.sh`
4. Open Vim and enjoy your development environment!

## Requirements

- Ubuntu or Debian-based Linux distribution.

## Contributing

Feel free to fork this repository, make changes, and submit pull requests. Feedback and contributions are welcome!