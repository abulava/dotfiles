#!/bin/sh

echo "  → Installing essential RBEnv and Ruby-Build..."
brew install rbenv
brew install ruby-build
brew install rbenv-gemset

echo "✓ RBEnv installed"

echo "  → Installing Ruby"
rbenv install 1.8.7-p352
rbenv install 1.9.2-p290
rbenv global 1.8.7-p352

echo "✓ Installed Ruby: $(rbenv global)"

echo "  → Installing essential Rubygems..."
gem install rake bundler
rbenv rehash

echo "✓ Rubygems installed"

echo "  → Installing utilities..."
brew install mc
brew install git bash-completion
brew install ack

echo "✓ Utilities installed"

echo "  → Installing Janus: Vim Distribution..."
curl -Lo- https://bit.ly/janus-bootstrap | sh

echo "✓ Janus: Vim Distribution installed"
