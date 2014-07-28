#!/bin/sh

echo "  → Installing Homebrew..."
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew update

echo "✓ Homebrew installed"

echo "  → Installing essential RBEnv and Ruby-Build..."
brew install rbenv
brew install ruby-build
#brew install rbenv-gemset

echo "✓ RBEnv installed"

echo "  → Installing Ruby"
rbenv install 1.9.3-p429

rbenv global 1.9.3-p429

echo "✓ Installed Ruby: $(rbenv global)"

echo "  → Installing essential Rubygems..."
gem install rake bundler
rbenv rehash

echo "✓ Rubygems installed"

echo "  → Installing utilities..."
brew install mc
brew install bash-completion
brew install git
brew install ack

echo "✓ Utilities installed"

echo "  → Installing Janus: Vim Distribution..."
curl -Lo- https://bit.ly/janus-bootstrap | sh

echo "✓ Janus: Vim Distribution installed"
