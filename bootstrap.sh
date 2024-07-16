#!/bin/sh

# Installing Xcode command line tools (opens UI window)
xcode-select --install

# Installing Homebrew if it is not installed
brew || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Adding brew to the PATH
brew || (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Installing ansible if it is not installed
ansible || brew install ansible

# Installing ansible roles
ansible-galaxy install -r requirements.yml --force

# Running ansible playbook
ansible-playbook mac-bootstrap.yml
