#!/bin/bash

# execute command
# -------------------
# curl -s https://raw.githubusercontent.com/karaage0703/vscode-dotfiles/master/install-vscode-extensions.sh | /bin/bash

# Visual Studio Code :: Package list
pkglist=(
vscodevim.vim
github.github-vscode-theme
golang.go
)

for i in ${pkglist[@]}; do
  code --install-extension $i
done
