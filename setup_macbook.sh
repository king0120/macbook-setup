#!/bin/bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "Brew Installed"

brew install cask heroku mongodb node postgresql rbenv

echo "Brew Libraries Installed"

brew cask install flycut google-chrome iterm2 slack spectacle visual-studio-code mongodb-compass postman

echo "Installed Development Programs"

brew services start mongodb
brew services start postgres

echo "Brew Services Start Complete"

echo "Installing Bash-it"
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh --silent
echo "Bash-It Complete"

echo "Add Code Script to Bash Profile"
cat << EOF >> ~/.bash_profile
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
