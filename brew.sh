#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

brew install ag
brew install coreutils
brew install ctags-exuberant
brew install curl --with-openssl
brew install findutils
brew install git
brew install gnu-sed --with-default-names
brew install libcouchbase
brew install moreutils
brew install mycli
brew install mysql56
brew install nodejs
brew install postgres
brew install pyenv
brew install redis
brew install rename
brew install ripgrep
brew install tmux
brew install tree
brew install vim --override-system-vi
brew install z
brew install zsh

brew cask install iterm2
brew cask install skype
brew cask install slack
brew cask install goofy
brew cask install telegram
brew cask install gitter
brew cask install spotify
brew cask install dropbox
