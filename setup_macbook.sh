#!/bin/bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "Brew Installed"

brew install cask heroku mongodb node postgresql rbenv

echo "Brew Libraries Installed"

brew cask install flycut google-chrome iterm2 slack spectacle visual-studio-code

echo "Installed Development Programs"