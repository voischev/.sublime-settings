#!/bin/bash

# Brew
brew update
# Install more recent versions of some OS X tools
brew install vim --override-system-vi
brew install node
brew install tree

# cask
# brew tap caskroom/versions
# brew tap caskroom/versions
# brew install caskroom/cask/brew-cask

# brew cask install sublime-text
# brew cask install iterm2

# Remove outdated versions from the cellar.
brew cleanup

# oh-my-zsh
curl -L http://install.ohmyz.sh | sh

# Dotfiles init
export DOTFILES=$HOME/.dotfiles

ln -s $DOTFILES/zshrc           $HOME/.zshrc
ln -s $DOTFILES/vimrc           $HOME/.vimrc
ln -s $DOTFILES/vim             $HOME/.vim
ln -s $DOTFILES/jscsrc          $HOME/.jscsrc
ln -s $DOTFILES/jshintrc        $HOME/.jshintrc
ln -s $DOTFILES/jshintignore    $HOME/.jshintignore
ln -s $DOTFILES/gitignore       $HOME/.gitignore
ln -s $DOTFILES/gitconfig       $HOME/.gitconfig

# Sublime Text init
cd $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/
rm -rf User
ln -s $DOTFILES/sublime User

# OSX
## [For Vintage Mode](http://www.sublimetext.com/docs/3/vintage.html)
defaults write com.sublimetext.3 ApplePressAndHoldEnabled -bool false