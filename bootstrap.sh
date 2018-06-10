#!/bin/sh

# Installing Xcode command line tools (opens UI window)
xcode-select --install

# Installing Homebrew if it is not installed
brew || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Installing ansible if it is not installed
ansible || brew install ansible